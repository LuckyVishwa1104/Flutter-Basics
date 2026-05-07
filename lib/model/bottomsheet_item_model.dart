import 'package:flutter/material.dart';

class BottomsheetItemModel {

  final String title;
  final IconData icon;
  final VoidCallback onTap;

  BottomsheetItemModel({
     required this.title,
     required this.icon,
     required this.onTap
  });
  
}