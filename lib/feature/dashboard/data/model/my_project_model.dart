class MyProjectModel {
  final String title;
  final String imagePath;
  final String videoPath;
  final String codeInGithubPath;
  final void Function() onTap;

  MyProjectModel(
      {required this.title, required this.imagePath, required this.onTap , required this.videoPath, required this.codeInGithubPath});
}
