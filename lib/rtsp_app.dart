import 'package:easy_coding/big_head_softwares.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/bottom_navigation_cubit.dart';
import 'utils/export.dart';

class RtspApp extends StatelessWidget {
  const RtspApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Heading2(
          'Live view',
          color: Colours.green,
        ),
        centerTitle: true,
        backgroundColor: Colours.white,
        elevation: 0,
      ),
      drawer: const Drawer(),
      body: BlocListener<BottomNavigationCubit, int>(
        listener: (BuildContext context, int state) {
          BlocProvider.of<BottomNavigationCubit>(context)
              .controller
              .jumpToPage(state);
        },
        child: PageView(
          controller:
              BlocProvider.of<BottomNavigationCubit>(context).controller,
          onPageChanged: (int index) =>
              BlocProvider.of<BottomNavigationCubit>(context)
                  .changeIndex(index),
          children: BlocProvider.of<BottomNavigationCubit>(context).screens,
        ),
      ),
      bottomNavigationBar: BlocBuilder<BottomNavigationCubit, int>(
        builder: (BuildContext context, int state) {
          return BottomNavigationBar(
            onTap: (int index) =>
                BlocProvider.of<BottomNavigationCubit>(context)
                    .changeIndex(index),
            currentIndex: state,
            selectedFontSize: 12.0,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: CustomBottomNavigationItem(
                  text: '1',
                  isSelected: state == 0,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: CustomBottomNavigationItem(
                  text: '4',
                  isSelected: state == 1,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: CustomBottomNavigationItem(
                  text: '9',
                  isSelected: state == 2,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: CustomBottomNavigationItem(
                  text: '16',
                  isSelected: state == 3,
                ),
                label: '',
              ),
            ],
          );
        },
      ),
    );
  }
}

class CustomBottomNavigationItem extends StatelessWidget {
  const CustomBottomNavigationItem({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: isSelected ? primaryColor(context) : Colours.transparent,
        border: Border.all(
          color: primaryColor(context),
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: SubHeading2(
        text,
        color: isSelected ? Colours.white : primaryColor(context),
      ),
    );
  }
}
