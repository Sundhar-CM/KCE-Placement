import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLinePage extends StatelessWidget {
  const TimeLinePage({super.key, required this.isFirst, required this.isLast, required this.isPast});
  
  final bool isFirst,isLast,isPast;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
          
    );
  }
}