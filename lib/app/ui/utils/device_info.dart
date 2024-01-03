import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DeviceInfoText extends StatelessWidget {
  DeviceInfoText({
    super.key,
  });

  final deviceInfoPlugin = DeviceInfoPlugin();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getDeviceInfo(),
      builder: (context, AsyncSnapshot<BaseDeviceInfo> snapshot) {
        const inter = TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        );
        if (snapshot.hasData) {
          final data = snapshot.data!.data;

          return Column(
            children: [
              Text(
                '$defaultTargetPlatform',
                textAlign: TextAlign.center,
                style: inter,
              ),
              ...data.entries
                  .map(
                    (e) => Text(
                      '${e.key}: ${e.value}',
                      textAlign: TextAlign.center,
                      style: inter,
                    ),
                  )
                  .toList(),
            ],
          );
        } else {
          return const Text(
            'Device Info: Loading...',
            textAlign: TextAlign.center,
            style: inter,
          );
        }
      },
    );
  }

  Future<BaseDeviceInfo> getDeviceInfo() async {
    return await deviceInfoPlugin.deviceInfo;
  }
}
