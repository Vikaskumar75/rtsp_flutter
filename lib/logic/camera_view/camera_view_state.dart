part of 'camera_view_cubit.dart';

abstract class CameraViewState extends Equatable {
  const CameraViewState();

  @override
  List<Object> get props => <Object>[];
}

class CameraViewInitial extends CameraViewState {}

class CameraViewSelected extends CameraViewState {
  final VlcPlayerController vlcViewController;
  const CameraViewSelected(this.vlcViewController);
  @override
  List<VlcPlayerController> get props =>
      <VlcPlayerController>[vlcViewController];
}

class CameraViewError extends CameraViewState {}
