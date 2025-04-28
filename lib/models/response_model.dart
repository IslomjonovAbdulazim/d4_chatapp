class ResponseModel {
  // members
  late String title;
  late String message;
  late bool isSuccessful;
  late int status;

  // constructor
  ResponseModel({
    required this.title,
    required this.message,
    required this.isSuccessful,
    required this.status,
  });

  // fromJson
  ResponseModel.fromJson(Map json) {
    title = json["title"];
    message = json["message"];
    isSuccessful = json["is_successful"];
    status = json["status"];
  }
}
