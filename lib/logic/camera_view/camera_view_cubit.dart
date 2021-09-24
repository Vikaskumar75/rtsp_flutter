import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

part 'camera_view_state.dart';

class CameraViewCubit extends Cubit<CameraViewState> {
  CameraViewCubit() : super(CameraViewInitial());

  void setCameraUrl(String url) {
    final VlcPlayerController _vlcViewController = VlcPlayerController.network(
      url,
      autoPlay: true,
    );
    emit(
      CameraViewSelected(_vlcViewController),
    );
  }
}
