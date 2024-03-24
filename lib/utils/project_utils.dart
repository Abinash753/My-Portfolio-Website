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
    image: "assets/projects/ev_project.png",
    title: "EV Charging Station Finder App",
    subtitle:
        'EV charging Station finder App for finding the charging station of the EV vehicles ',
  ),
  ProjectUtils(
    image: "assets/icons/chat_icon.png",
    title: "Flutter Chat App",
    subtitle: 'This is a comprehensive chat App for chatting with firends',
  ),
  ProjectUtils(
    image: "assets/icons/movie_icon.jpg",
    title: "Flutter Movie App",
    subtitle:
        'Movie App for Listing the movies, series and TV shows of different categories',
  ),
  ProjectUtils(
    image: "assets/icons/news_icon.jpg",
    title: "Flutter News App",
    subtitle:
        'This is a comprehensive news App for Listing the news of different categories',
  ),
  ProjectUtils(
    image: "assets/icons/todo_icon.png",
    title: " ToDo App",
    subtitle:
        'This is a comprehensive Store App for Listing the grocery items of different categories',
  ),
  ProjectUtils(
    image: "assets/icons/grocery_icon.png",
    title: " Grocery Store APp",
    subtitle:
        'This is a comprehensive Store App for Listing the grocery items of different categories',
  ),
];

//work Projects
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: "assets/projects/ev_project.png",
    title: "EV Charging Station Finder App",
    subtitle: "This is english learnign app for students to learn",
    androidLink: "",
  ),
  ProjectUtils(
    image: "assets/login_page.png",
    title: "Chat App",
    subtitle: "This is english learnign app for students to learn",
    androidLink: "",
  ),
  ProjectUtils(
    image: "assets/icons/flutter_icon.png",
    title: "My Portfolio Website",
    subtitle: "This is english learnign app for students to learn",
    androidLink: "",
  ),
];
