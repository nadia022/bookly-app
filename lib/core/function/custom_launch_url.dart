import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLauchUrl(context ,String url)async{
  Uri uri=Uri.parse(url);
  if(await canLaunchUrl(uri)){
    await launchUrl(uri, mode: LaunchMode.externalApplication);
    return;
  }
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text("Can not launch this url"))
  );

}