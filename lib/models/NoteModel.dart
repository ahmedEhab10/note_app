import 'package:hive/hive.dart';

part 'NoteModel.g.dart';

@HiveType(typeId: 0)
class Notemodel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String suptitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  Notemodel(
      {required this.title,
      required this.suptitle,
      required this.date,
      required this.color});
}
