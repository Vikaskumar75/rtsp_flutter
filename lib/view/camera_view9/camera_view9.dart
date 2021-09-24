import 'package:easy_coding/big_head_softwares.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/camera_view/camera_view_cubit.dart';
import '../../utils/export.dart';

class CameraView9 extends StatelessWidget {
  CameraView9({Key? key}) : super(key: key);
  
  final TextEditingController cam1 = TextEditingController();
  final TextEditingController cam2 = TextEditingController();
  final TextEditingController cam3 = TextEditingController();
  final TextEditingController cam4 = TextEditingController();
  final TextEditingController cam5 = TextEditingController();
  final TextEditingController cam6 = TextEditingController();
  final TextEditingController cam7 = TextEditingController();
  final TextEditingController cam8 = TextEditingController();
  final TextEditingController cam9 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: <Widget>[
           BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor9(controller: cam1),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor9(controller: cam2),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor9(controller: cam3),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor9(controller: cam4),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor9(controller: cam5),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor9(controller: cam6),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor9(controller: cam7),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor9(controller: cam8),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor9(controller: cam9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CameraViewFor9 extends StatelessWidget {
  const _CameraViewFor9({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CameraView(
      height: screenHeight(context) * 0.133,
      width: screenWidth(context) * 0.33,
      iconSize: 10,
      childRadius: 38,
      fontSize: 12,
      onPressed: () {
        push(
          context,
          BlocProvider<CameraViewCubit>.value(
            value: BlocProvider.of<CameraViewCubit>(context),
            child: SetUrl(controller: controller),
          ),
        );
      },
    );
  }
}
