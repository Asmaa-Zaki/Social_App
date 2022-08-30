class PostModel {
  late String uId;
  String? text;
  String? postImage;
  String? postVideo;
  late String dateTime;
  late String postId;

  PostModel(
      {required this.uId,
      this.postImage,
      this.text,
      required this.dateTime,
      this.postVideo,
      required this.postId});

  PostModel.fromJson(Map<String, dynamic> data) {
    uId = data["uId"];
    text = data["text"];
    postImage = data["postImage"];
    dateTime = data["dateTime"];
    postId = data['postId'];
    postVideo = data["postVideo"];
  }

  Map<String, dynamic> toMap() {
    return {
      "uId": uId,
      "dateTime": dateTime,
      "postImage": postImage,
      "text": text,
      "postId": postId,
      "postVideo": postVideo
    };
  }
}
