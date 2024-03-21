class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? iosLink;
  final String? androidLink;
  final String? webLink;

  ProjectUtils(
      {required this.image,
      required this.title,
      required this.subtitle,
      this.iosLink,
      this.androidLink,
      this.webLink});
}

//Hobby Projects
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: "assets/projects/ev_connect.png",
    title: "EV Charging Station Finder App",
    subtitle:
        'This is a comprehensive EV charging Station finder App for Listing the movies, series and TV shows of different categories',
  ),
  ProjectUtils(
    image: "assets/projects/chat_app.png",
    title: "Flutter Chat App",
    subtitle: 'This is a comprehensive chat App for chatting with firends',
  ),
  ProjectUtils(
    image: "assets/projects/movie_app.png",
    title: "Flutter Movie App",
    subtitle:
        'This is a comprehensive Movie App for Listing the movies, series and TV shows of different categories',
  ),
  ProjectUtils(
    image: "assets/projects/news_app.png",
    title: "Flutter News App",
    subtitle:
        'This is a comprehensive news App for Listing the news of different categories',
  ),
  ProjectUtils(
    image: "assets/projects/store_app.png",
    title: " Store App",
    subtitle:
        'This is a comprehensive Store App for Listing the grocery items of different categories',
  ),
];
