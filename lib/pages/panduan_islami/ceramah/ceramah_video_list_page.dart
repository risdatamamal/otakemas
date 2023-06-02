part of '../../pages.dart';

class CeramahVideoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: black,
        ),
        backgroundColor: mainColor,
        title: const Text(ceramah,
            style: TextStyle(
                fontSize: 24, color: black, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: white,
        child: ListView.builder(
          itemCount: ceramahVideos.length,
          itemBuilder: (context, index) {
            final video = ceramahVideos[index];
            return GestureDetector(
              onTap: () {
                _launchYouTubeApp(video.id);
              },
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Card(
                    margin: const EdgeInsets.only(right: 24, left: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Adjust the radius value to control the roundness
                    ),
                    child: ListTile(
                      leading: Container(
                        width: 70,
                        height: 70,
                        margin: const EdgeInsets.only(right: 8),
                        child: Image.network(video.thumbnailUrl),
                      ),
                      title: Text(
                        video.title,
                        style: GoogleFonts.poppins(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _launchYouTubeApp(String videoId) async {
    final videoUrl = 'https://www.youtube.com/watch?v=$videoId';

    if (await canLaunch(videoUrl)) {
      await launch(videoUrl);
    } else {
      throw 'Tidak dapat membuka video';
    }
  }
}
