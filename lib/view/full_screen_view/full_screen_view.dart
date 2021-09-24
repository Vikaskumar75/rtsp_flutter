import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

import '../../utils/export.dart';

class FullScreenView extends StatefulWidget {
  const FullScreenView({
    Key? key,
    required this.vlcViewController,
  }) : super(key: key);

  final VlcPlayerController vlcViewController;

  @override
  _FullScreenViewState createState() => _FullScreenViewState();
}

class _FullScreenViewState extends State<FullScreenView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VlcPlayer(
        controller: widget.vlcViewController,
        aspectRatio: 4 / 3,
        placeholder: const Center(
          child: SubHeading2('Connecting...'),
        ),
      ),
    );
  }
}
