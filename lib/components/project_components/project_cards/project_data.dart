class ProjectData {
  const ProjectData({
    required this.title,
    required this.svgSemantic,
    required this.dateRange,
    required this.svg,
    required this.firstImage,
    required this.firstImageSemantic,
    required this.secondImage,
    required this.secondImageSemantic,
    required this.thirdImage,
    required this.thirdImageSemantic,
    required this.description,
    required this.buttonText,
    required this.buttonLink,
  });

  final String title;
  final String svgSemantic;
  final String dateRange;
  final String svg;
  final String firstImage;
  final String firstImageSemantic;
  final String secondImage;
  final String secondImageSemantic;
  final String thirdImage;
  final String thirdImageSemantic;
  final String description;
  final String buttonText;
  final String buttonLink;
}



const projects = [



  ProjectData(
    title:
    'Cloud Application Deployment',
    dateRange: 'Feb 2022',
    svg: 'assets/images/undraw_cloud_hosting_aodd.svg',
    svgSemantic: 'Flutter animated image',
    firstImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/cloud1.JPG',
    firstImageSemantic: 'Fooderlich application image',
    secondImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/anylytics.JPG',
    secondImageSemantic: 'Fooderlich application image',
    thirdImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/cloud1.JPG',
    thirdImageSemantic: 'Fooderlich application image',
    description: "Deploy a flutter application using Firebase or Google Cloud's App Engine. Use Cloud Storage bucket to house all heavy storage assets and have them pulled as needed. With analytics tracking set up.",
    buttonText: 'See Live Portfolio Project',
    buttonLink: 'https://wesleymb.com/',
  ),

  ProjectData(
    title:
    'Web Portfolio',
    dateRange: 'Jan 2022 - Feb 2022',
    svg: 'assets/images/undraw_flutter_dev_wvqj.svg',
    svgSemantic: 'Flutter animated image',
    firstImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/port1.JPG',
    firstImageSemantic: 'Fooderlich application image',
    secondImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/port2.JPG',
    secondImageSemantic: 'Fooderlich application image',
    thirdImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/port3.JPG',
    thirdImageSemantic: 'Fooderlich application image',
    description: "Created this portfolio from scratch using Google's Flutter framework. I was able to develop this multi-platform application using the skills taught in the Flutter Development Course created by Raywenderlich and Google, as well as the 2021 Flutter Development Bootcamp with Dart.\nThe project is currently deployed on the web as a website for Wesley Mbuakoto (myself). Also designed, stable, and tested for web, android, ios, and windows. This is possible by using Flutter's most recent 2.10 version. This portfolio project has a complete responsive design on every platform it is run on, and this has been tested thoroughly. While also keeping up with the modern standard of 60 frames per second on every platform, without hindering the performance of the device.\nThis application will continue to be kept up to date, and will have more flutter features added to it",
    buttonText: 'See Project Code',
    buttonLink: 'https://github.com/wesleymbuakoto/wesleymbuakotoPortfolio',
  ),

  ProjectData(
    title:
    'Fooderlich Backend Application',
    dateRange: 'Nov 2021 - Dec 2021',
    svg: 'assets/images/undraw_flutter_dev_wvqj.svg',
    svgSemantic: 'Flutter animated image',
    firstImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/Fooderlich_be1.JPG',
    firstImageSemantic: 'Fooderlich application image',
    secondImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/fooderlich_be2.JPG',
    secondImageSemantic: 'Fooderlich application image',
    thirdImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/fooderlich3.JPG',
    thirdImageSemantic: 'Fooderlich application image',
    description: "A Responsive cooking recipe social media, flutter application. The user can search for recipes, add those recipes to their favorite, save the recipes for later, and create easy to use grocery list. This flutter application was created, showing these topics in flutter:\n• Understanding of Widgets, and all the different types of them\n• Routes and Navigation using Navigator 2.0\n• Deep Links & Web URLs\n• State Management\n• Responsive Design\n• Networking in Flutter\n• using the Chopper Library\n• Flutter Streams\nThis flutter application was developed to run on Android and IOS. The project was instructed by Raywenderlich's Flutter Apprentice Course, created and taught in partnership with Googles Flutter Development Team",
    buttonText: 'See Project Code',
    buttonLink: 'https://github.com/wesleymbuakoto/Fooderlich-backend',
  ),
  ProjectData(
    title:
    'Fooderlich Application',
    dateRange: 'Oct 2021 - Nov 2021',
    svg: 'assets/images/undraw_flutter_dev_wvqj.svg',
    svgSemantic: 'Flutter animated image',
    firstImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/fooderlich_fe1.JPG',
    firstImageSemantic: 'Fooderlich application image',
    secondImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/fooderlich_fe2.JPG',
    secondImageSemantic: 'Fooderlich application image',
    thirdImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/fooderlich_fe3.JPG',
    thirdImageSemantic: 'Fooderlich application image',
    description: "A Responsive cooking recipe social media, flutter application. The user can look through comments for recipes, through different type of recipes, create a grocery list, give each list item specific properties, and be able to easily delete them. As well as be able to change between normal and dark theme for the application.This flutter application was created, showing these topics in flutter:\n• Understanding of Widgets, and all the different types of them\n• Routes and Navigation using Navigator 2.0\n• Deep Links & Web URLs\n• State Management\n• Responsive Design\nThis flutter application was developed to run on Android, IOS, and Web. The project was instructed by Raywenderlich's Flutter Apprentice Course, created and taught in partnership with Googles Flutter Development Team.",
    buttonText: 'See Project Code',
    buttonLink: 'https://github.com/wesleymbuakoto/Fooderlich',
  ),
  ProjectData(
    title:
    'BMI (Body Mass Index) Application',
    dateRange: 'May 2021 - May 2021',
    svg: 'assets/images/undraw_flutter_dev_wvqj.svg',
    svgSemantic: 'Flutter animated image',
    firstImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/bmi.JPG',
    firstImageSemantic: 'Body mass index application image',
    secondImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/bmi2.JPG',
    secondImageSemantic: 'Body mass index application image',
    thirdImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/bmi3.JPG',
    thirdImageSemantic: 'Body mass index application image',
    description: "A Responsive body mass index calculator application, that takes in user's sex, height, weight, and age. This particular project shows the flexibility of stateful widgets in flutter. This flutter application was developed to run on Android and IOS. The project was instructed Dr. Angela Yu in the Complete 2021 Flutter Development Bootcamp , on Udemy.",
    buttonText: 'See Project Code',
    buttonLink: 'https://github.com/wesleymbuakoto/BMI-Calculator',
  ),
  ProjectData(
    title:
    'Destini Application',
    dateRange: 'Feb 2021 - Feb 2021',
    svg: 'assets/images/undraw_flutter_dev_wvqj.svg',
    svgSemantic: 'Flutter animated image',
    firstImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/Destini.JPG',
    firstImageSemantic: 'Destini application image',
    secondImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/destini2.JPG',
    secondImageSemantic: 'Destini application image',
    thirdImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/destini3.JPG',
    thirdImageSemantic: 'Destini application image',
    description: "A Responsive Destini story application, that has a modularized story. The application takes the user's answers and progressing along a story. Once the user has gone through the story making their decisions, they are met with one of the possible endings based on the user's choices. This particular project shows the object orientation of the dart programing language, allowing the user to see what is necessary and nothing more. This flutter application was developed to run on Android and IOS. The project was instructed Dr. Angela Yu in the Complete 2021 Flutter Development Bootcamp, on Udemy.",
    buttonText: 'See Project Code',
    buttonLink: 'https://github.com/wesleymbuakoto/Destini',
  ),
  ProjectData(
    title:
    'Quizzler Application',
    dateRange: 'Mar 2021 - Mar 2021',
    svg: 'assets/images/undraw_flutter_dev_wvqj.svg',
    svgSemantic: 'Flutter animated image',
    firstImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/quizzler1.JPG',
    firstImageSemantic: 'Dice application image',
    secondImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/quizzler2.JPG',
    secondImageSemantic: 'Dice application image',
    thirdImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/quizzler3.JPG',
    thirdImageSemantic: 'Dice application image',
    description: "A Responsive Quiz application, that has a modularized questions. The application take the user's answers and stores them, while showing a visual progress at the bottom on the application. depicting how the user is doing. Then ends it by notifying when the user has answered all the questions and restarts the quiz. This particular project shows the power of the dart language and how you can modularize any aspect the developer desires. This flutter application was developed to run on Android and IOS. The project was instructed Dr. Angela Yu in the Complete 2021 Flutter Development Bootcamp, on Udemy.",
    buttonText: 'See Project Code',
    buttonLink: 'https://github.com/wesleymbuakoto/Quizzler',
  ),
  ProjectData(
    title:
    'Dicce Application',
    dateRange: 'Feb 2021 - Feb 2021',
    svg: 'assets/images/undraw_flutter_dev_wvqj.svg',
    svgSemantic: 'Flutter animated image',
    firstImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/dice1.JPG',
    firstImageSemantic: 'Dice application image',
    secondImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/dice2.JPG',
    secondImageSemantic: 'Dice application image',
    thirdImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/dice3.JPG',
    thirdImageSemantic: 'Dice application image',
    description: 'A Responsive dice rolling application. This particular project shows the flexibility of stateful widgets in flutter. This flutter application was developed to run on Android and IOS. The project was instructed Dr. Angela Yu in the Complete 2021 Flutter Development Bootcamp, on Udemy.',
    buttonText: 'See Project Code',
    buttonLink: 'https://github.com/wesleymbuakoto/Dicee',
  ),
  ProjectData(
    title:
    'Hawkify and the Power of React.js',
    dateRange: 'Mar 2019',
    svg: 'assets/images/undraw_react_y-7-wq.svg',
    svgSemantic: 'Web Animated image',
    firstImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/Hawk1.JPG',
    firstImageSemantic: 'Montclair State Recreation new site image',
    secondImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/Hawk2.JPG',
    secondImageSemantic: 'Montclair State Recreation new site image',
    thirdImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/hawk3.JPG',
    thirdImageSemantic: 'Montclair State Recreation new site image',
    description: 'Assisted in the development of Montclair Campus Recreation center website redesign. Moved all of the current information into WordPress. Then going to each department of the organization to design their area web pages.',
    buttonText: 'See Website',
    buttonLink: 'https://github.com/wesleymbuakoto/Hawkify-with-Reactjs',
  ),
  ProjectData(
    title:
        'Montclair State University Campus Recreation Website Re-design',
    dateRange: 'Oct 2017 - Apr 2018',
    svg: 'assets/images/undraw_pair_programming_re_or4x.svg',
    svgSemantic: 'Web Animated image',
    firstImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/msuredesign.JPG',
    firstImageSemantic: 'Montclair State Recreation new site image',
    secondImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/msuredesign2.JPG',
    secondImageSemantic: 'Montclair State Recreation new site image',
    thirdImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/msuredesign3.JPG',
    thirdImageSemantic: 'Montclair State Recreation new site image',
    description: 'Assisted in the development of Montclair Campus Recreation center website redesign. Moved all of the current information into WordPress. Then going to each department of the organization to design their area web pages.',
    buttonText: 'See Website',
    buttonLink: 'https://www.montclair.edu/campus-recreation/',
  ),
  ProjectData(
    title:
    'MSU Campus Recreation Application',
    dateRange: 'Jun 2017 - Aug 2017',
    svg: 'assets/images/undraw_pair_programming_re_or4x.svg',
    svgSemantic: 'Web Animated image',
    firstImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/ReccApp1.JPG',
    firstImageSemantic: 'Montclair State Recreation new site image',
    secondImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/Reccapp2.JPG',
    secondImageSemantic: 'Montclair State Recreation new site image',
    thirdImage: 'https://storage.googleapis.com/wesley_web_assets/assets/projects/Reccapp3.JPG',
    thirdImageSemantic: 'Montclair State Recreation new site image',
    description: 'Handled the New Campus Recreation Center application. With new features, modern design, and a more streamlined User Interface.',
    buttonText: 'See Application',
    buttonLink: 'https://play.google.com/store/apps/details?id=com.app.lykamzvkodwstbhqpjglvdwozamfhpgesubcriexqcy',
  ),


];
