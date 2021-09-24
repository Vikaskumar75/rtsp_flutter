import 'package:easy_coding/big_head_softwares.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/camera_view/camera_view_cubit.dart';
import '../../utils/export.dart';

class CameraView16 extends StatelessWidget {
  CameraView16({Key? key}) : super(key: key);

  final TextEditingController cam1 = TextEditingController();
  final TextEditingController cam2 = TextEditingController();
  final TextEditingController cam3 = TextEditingController();
  final TextEditingController cam4 = TextEditingController();
  final TextEditingController cam5 = TextEditingController();
  final TextEditingController cam6 = TextEditingController();
  final TextEditingController cam7 = TextEditingController();
  final TextEditingController cam8 = TextEditingController();
  final TextEditingController cam9 = TextEditingController();
  final TextEditingController cam10 = TextEditingController();
  final TextEditingController cam11 = TextEditingController();
  final TextEditingController cam12 = TextEditingController();
  final TextEditingController cam13 = TextEditingController();
  final TextEditingController cam14 = TextEditingController();
  final TextEditingController cam15 = TextEditingController();
  final TextEditingController cam16 = TextEditingController();

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
                    _CameraViewFor16(controller: cam1),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam2),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam3),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam4),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam5),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam6),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam7),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam8),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam9),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam10),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam11),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam12),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam13),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam14),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam15),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) =>
                    _CameraViewFor16(controller: cam16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CameraViewFor16 extends StatelessWidget {
  const _CameraViewFor16({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CameraView(
      height: screenHeight(context) * 0.1,
      width: screenWidth(context) * 0.25,
      iconSize: 10,
      childRadius: 38,
      fontSize: 10,

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
