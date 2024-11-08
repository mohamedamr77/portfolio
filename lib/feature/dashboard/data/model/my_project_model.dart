class MyProjectModel {
  final String title;
  final String imagePath;
  final void Function() onTap;

  MyProjectModel(
      {required this.title, required this.imagePath, required this.onTap});
}
