class ServiceModel {
  final String title;
  final String description;
  final String image;
  final void Function()? onTap;
  ServiceModel(
      {required this.title,
      required this.description,
      required this.image,
      required this.onTap});
}
