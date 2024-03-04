import 'package:demo_apllication/DriveList/company_drive.dart';
import 'package:demo_apllication/DriveList/drive_list.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DriveDetails extends StatefulWidget {
  const DriveDetails({super.key, required this.driveList});

  final CompanyDrive driveList;

  @override
  State<DriveDetails> createState() => _DriveDetailsState();
}

class _DriveDetailsState extends State<DriveDetails> {
  
  bool isPast=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.driveList.companyName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text('Role:${widget.driveList.role}',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: driveTime.length,
                  itemBuilder: (context, index){
                  DriveList driveView=driveTime[index];
                  isPast=driveView.isPast;
                  return TimelineTile(
                    isFirst: driveView.isFirst,
                    isLast: driveView.isLast,
                    beforeLineStyle: LineStyle(
                      color:isPast?const Color.fromARGB(255, 248, 81, 31):const Color.fromARGB(255, 245, 182, 163),
                      
                    ),
                    indicatorStyle: IndicatorStyle(
                      width: 20,
                      color: const Color.fromARGB(255, 248, 81, 31),
                      iconStyle: IconStyle(
                        iconData: isPast?Icons.done:Icons.cancel_outlined,
                        color: Colors.white,
                        fontSize: 15
                      )
                    ),
                  );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
