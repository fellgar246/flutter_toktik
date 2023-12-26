import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        if (index < videos.length) {
          final VideoPost videoPost = videos[index];

          return Stack(
            children: [
              // Video Player + gradient

              // Botones
              Positioned(
                  bottom: 40, right: 20, child: VideoButtons(video: videoPost))
            ],
          );
        } else {
          return Container(); // Retorna un contenedor vacío si el índice no es válido
        }
      },
    );
  }
}
