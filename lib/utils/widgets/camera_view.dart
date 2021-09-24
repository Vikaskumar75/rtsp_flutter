import 'package:easy_coding/big_head_softwares.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import '../../view/full_screen_view/full_screen_view.dart';

import '../../logic/camera_view/camera_view_cubit.dart';
import '../export.dart';

part 'no_camera_view.dart';

class CameraView extends StatelessWidget {
  const CameraView({
    Key? key,
    this.height,
    this.width,
    required this.onPressed,
    this.childRadius,
    this.iconSize,
    this.fontSize,
  }) : super(key: key);

  final double? height;
  final double? width;
  final VoidCallback onPressed;
  final double? childRadius;
  final double? iconSize;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraViewCubit, CameraViewState>(
      builder: (BuildContext context, CameraViewState state) {
        if (state is CameraViewInitial) {
          return NoCameraView(
            onPressed: onPressed,
            height: height,
            width: width,
            iconSize: iconSize,
            childRadius: childRadius,
            fontSize: fontSize,
          );
        } else if (state is CameraViewSelected) {
          return SizedBox(
            height: height,
            width: width,
            child: GestureDetector(
              onTap: () {
                Log.wtf('Orientation');
                push(
                  context,
                  FullScreenView(
                    vlcViewController: state.vlcViewController,
                  ),
                );
              },
              child: VlcPlayer(
                controller: state.vlcViewController,
                aspectRatio: 4 / 3,
                placeholder: const Center(
                  child: SubHeading2('Connecting...'),
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: Heading2('Something went wrong'),
          );
        }
      },
    );
  }
}
