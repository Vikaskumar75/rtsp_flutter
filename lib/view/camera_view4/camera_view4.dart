import 'package:easy_coding/big_head_softwares.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/camera_view/camera_view_cubit.dart';
import '../../utils/export.dart';

class CameraView4 extends StatelessWidget {
  CameraView4({Key? key}) : super(key: key);

  final TextEditingController cam1 = TextEditingController();
  final TextEditingController cam2 = TextEditingController();
  final TextEditingController cam3 = TextEditingController();
  final TextEditingController cam4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: <Widget>[
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) {
                  return CameraView(
                    height: screenHeight(context) * 0.2,
                    width: screenWidth(context) * 0.5,
                    onPressed: () {
                      push(
                        context,
                        BlocProvider<CameraViewCubit>.value(
                          value: BlocProvider.of<CameraViewCubit>(context),
                          child: SetUrl(controller: cam1),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) => CameraView(
                  height: screenHeight(context) * 0.2,
                  width: screenWidth(context) * 0.5,
                  onPressed: () {
                    push(
                      context,
                      BlocProvider<CameraViewCubit>.value(
                        value: BlocProvider.of<CameraViewCubit>(context),
                        child: SetUrl(controller: cam2),
                      ),
                    );
                  },
                ),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) => CameraView(
                  height: screenHeight(context) * 0.2,
                  width: screenWidth(context) * 0.5,
                  onPressed: () {
                    push(
                      context,
                      BlocProvider<CameraViewCubit>.value(
                        value: BlocProvider.of<CameraViewCubit>(context),
                        child: SetUrl(controller: cam3),
                      ),
                    );
                  },
                ),
              ),
            ),
            BlocProvider<CameraViewCubit>(
              create: (BuildContext context) => CameraViewCubit(),
              child: Builder(
                builder: (BuildContext context) => CameraView(
                  height: screenHeight(context) * 0.2,
                  width: screenWidth(context) * 0.5,
                  onPressed: () {
                    push(
                      context,
                      BlocProvider<CameraViewCubit>.value(
                        value: BlocProvider.of<CameraViewCubit>(context),
                        child: SetUrl(controller: cam4),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
