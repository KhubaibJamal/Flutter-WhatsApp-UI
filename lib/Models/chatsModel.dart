class ChatsModel {
  late String? name;
  late String? icon;
  late bool? isGroup;
  late String? time;
  late String? currentMessage;
  late String? status;
  late bool? select = false;
  late int? id;

  ChatsModel({
    this.name,
    this.icon,
    this.isGroup,
    this.time,
    this.currentMessage,
    this.status,
    this.select = false,
    this.id,
  });
}
