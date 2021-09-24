import 'package:easy_coding/big_head_softwares.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/camera_view/camera_view_cubit.dart';

import '../export.dart';

class SetUrl extends StatelessWidget {
  SetUrl({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Heading2('Set url'),
      ),
      body: Form(
        key: _key,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              onTap: () {
                BlocProvider.of<CameraViewCubit>(context)
                    .setCameraUrl('rtsp://192.168.1.165:554/ch01.264?dev=1');
                pop(context);
              },
              title: const SubHeading1('Camera01'),
              subtitle: const SubHeading2(
                'rtsp://192.168.1.165:554/ch01.264?dev=1',
                size: 12,
                maxLines: 1,
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
            sizedBoxHeight(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextFormField(
                controller: controller,
                validator: (String? value) {
                  if (value == null || value == '') {
                    return 'Please enter url';
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Set url',
                  labelStyle: textTheme(context).bodyText2!.copyWith(
                        color: primaryColor(context),
                      ),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor(context),
                    ),
                  ),
                ),
              ),
            ),
            sizedBoxHeight(14),
            ElevatedButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  BlocProvider.of<CameraViewCubit>(context)
                      .setCameraUrl(controller.text);
                  pop(context);
                }
              },
              child: SubHeading2(
                'Ok',
                color: primaryColor(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
