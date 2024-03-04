class DriveList {
  bool isFirst;
  bool isLast;
  bool isPast;
 

  DriveList(
    {
      required this.isFirst,
      required this.isLast,
      required this.isPast
    }
  );
}
 int length=3;
List<DriveList> driveTime=[
  DriveList(isFirst: true, isLast: false, isPast: true),
  DriveList(isFirst: false, isLast: false, isPast: true),
  DriveList(isFirst: false, isLast: false, isPast: true),
  DriveList(isFirst: false, isLast: false, isPast: false),
  DriveList(isFirst: false, isLast: true, isPast: false),
];