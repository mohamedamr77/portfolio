import 'package:portfolioapp/core/utils/app_images.dart';

import '../../../../core/utils/app_text.dart';
import 'my_project_model.dart';

List<MyProjectModel> myProjectList = [
  MyProjectModel(
    title: AppText.thePerfectBodyApp,
    imagePath: AppImages.perfectBody,
    onTap: () {}, videoPath: '', codeInGithubPath: '',
  ),
  MyProjectModel(
    title: AppText.dashboardApp,
    imagePath: AppImages.dashboardApp,
    onTap: () {}, videoPath: '', codeInGithubPath: '',
  ),
  MyProjectModel(
    title: AppText.newsApp,
    imagePath: AppImages.newsApp,
    onTap: () {}, videoPath: '', codeInGithubPath: '',
  ),

  MyProjectModel(
    title: AppText.toDoApp,
    imagePath: AppImages.todoApp,
    onTap: () {}, videoPath: 'assets/videos/to do app.mp4', codeInGithubPath: '',
  ),
  MyProjectModel(
    title: AppText.bookApp,
    imagePath: AppImages.booklyApp,
    onTap: () {}, videoPath: 'assets/videos/bookly app.mp4', codeInGithubPath: '',
  ),
  MyProjectModel(
    title: AppText.quizApp,
    imagePath: AppImages.quizApp,
    onTap: () {}, videoPath: 'assets/videos/quiz-app.mp4', codeInGithubPath: '',
  ),
  MyProjectModel(
    title: AppText.cafeApp,
    imagePath: AppImages.cafeApp,
    onTap: () {}, videoPath: 'assets/videos/cafe app.mp4', codeInGithubPath: '',
  ),
  MyProjectModel(
    title: AppText.currenciesApp,
    imagePath: AppImages.currenciesApp,
    onTap: () {}, videoPath: '', codeInGithubPath: 'assets/videos/digital_transaction_app.mp4',
  ),
];
