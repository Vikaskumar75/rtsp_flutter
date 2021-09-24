import 'package:easy_coding/big_head_softwares.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/export.dart';
import '../../logic/camera_view/camera_view_cubit.dart';

class CameraView1 extends StatelessWidget {
  CameraView1({Key? key}) : super(key: key);
  final TextEditingController cam1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocProvider<CameraViewCubit>(
          create: (BuildContext context) => CameraViewCubit(),
          child: Builder(
            builder: (BuildContext context) => CameraView(
              height: screenHeight(context) * 0.4,
              onPressed: () {
                push(
                  context,
                  BlocProvider<CameraViewCubit>.value(
                    value: BlocProvider.of<CameraViewCubit>(context),
                    child: SetUrl(controller: cam1),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
