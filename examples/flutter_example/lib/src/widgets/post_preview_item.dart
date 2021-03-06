import 'package:flutter/material.dart';
import 'package:flutter_example/src/prototyping_ui/photo.dart';
import 'package:flutter_example/src/utils/free_functions.dart';

class PostPreviewItem extends StatelessWidget {
  final Photo photo;
  final ValueChanged<Photo> postItemDidTapped;

  const PostPreviewItem({
    @required this.photo,
    @required this.postItemDidTapped,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: UniqueKey(),
      behavior: HitTestBehavior.opaque,
      onTap: () => postItemDidTapped(photo),
      child: Container(
        margin: const EdgeInsets.all(4),
        child: Stack(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image.network(
                photo.computedImageUrl(),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.1),
                    Colors.black54.withOpacity(0.4),
                  ],
                  stops: [
                    0.2,
                    0.6,
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenSize(context: context).width - 16,
                    child: Text(
                      photo.postTitle,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Published at: ${photo.publishedAt}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
