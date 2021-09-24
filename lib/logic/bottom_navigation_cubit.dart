import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view/camera_view1/camera_view1.dart';
import '../view/camera_view16/camera_view16.dart';
import '../view/camera_view4/camera_view4.dart';
import '../view/camera_view9/camera_view9.dart';

class BottomNavigationCubit extends Cubit<int> {
  BottomNavigationCubit() : super(0);

  PageController controller = PageController();
  final List<Widget> screens = <Widget>[
    CameraView1(),
    CameraView4(),
    CameraView9(),
    CameraView16(),
  ];

  void changeIndex(int index) => emit(index);
}
