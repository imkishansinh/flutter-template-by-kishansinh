# Weather app by kishansinh.com 🌦️

![Project structure](./repo_assets/image_01.png)

## Table of Contents 📚

- [Introduction](#introduction)
- [Steps to build and run the project](#steps-to-build-and-run-the-project)
- [How to Contribute](#how-to-contribute)
- [Contact Information](#contact-information)
- [Wiki](#wiki)

## Introduction 🎯

This is a Flutter project that provides weather information.

- The project follows clean architecture principles, separating concerns into distinct layers for better organization and maintainability.
- It includes test cases for data, domain, and cubit layers, ensuring robustness and reliability.
- The project demonstrates how to use a weather API, providing practical examples of API interaction.
- It shows how to convert API responses into UI level models, facilitating easy display of data in the user interface.

## Steps to build and run the project 🚀

1. Clone the Flutter Project:
   - Use the command `git clone https://github.com/imkishansinh/flutter-template-by-kishansinh.git` to download the project from the GitHub repository.

2. Install Dependencies:
   - Navigate to the project directory and execute the command `flutter pub get` to install the required dependencies.

3. Build the Project:
   - Run the command `flutter pub run build_runner build` to generate necessary files for the project.

4. Run the App:
   - Connect a device or emulator and run the app using the command `flutter run` or through your IDE.

## Screenshots

<table>
  <tr>
    <td><img src="./screenshots/home_page_blank_state.png" width="200"/></td>
    <td><img src="./screenshots/home_page.png" width="200"/></td>
  </tr>
  <tr>
    <td><img src="./screenshots/search_city.png" width="200"/></td>
    <td><img src="./screenshots/city_not_found.png" width="200"/></td>
  </tr>
</table>

## Solutions I provided

1. **Seprate of concerns**: Data, domain and presentation are seprated with his own concerns. All the layesrs are tested visit test folder.
2. **Ui and Data models**: UI and data models are different so only UI required data is passing to UI layers. Check **RemoteWeatherData** and **UiWeatherData**.
3. **Exceptions**: Handled every layer exceptions check **WeatherRepoImpl**, **QueryCityUc** and **WeatherHomeCubit**
4. **Widgets**: Widgets are pure widgets just like flutter's own widgets. Check lib/features/weather_home/presentations/widgets
5. **Test Driven Development(TDD)**: I cover all the layer are testable except the widgets I will try to add once I've proper understanding about widger testing.
6. **Many more**: Many more small-small solutions are inside this repository.

## How to Contribute 🤝

We welcome contributions from everyone! Here are some steps to follow:

1. **Fork the Project**: Click on the 'Fork' button at the top right corner of the repository page. This creates a copy of the repository in your GitHub account.

2. **Clone the Repository**: Go to your GitHub account, navigate to the forked repository and click on the 'Code' button. Copy the URL provided and open a terminal on your local machine. Run the command `git clone <URL>` to clone the repository.

3. **Create a New Branch**: Navigate to the cloned repository on your local machine and create a new branch using the command `git checkout -b <branch-name>`. Replace `<branch-name>` with a name that describes the changes you'll be making.

4. **Make Your Changes**: Make the necessary changes in the code. Ensure that your changes adhere to the coding style and standards of the project.

5. **Commit Your Changes**: After making the changes, stage them using `git add .` and then commit them using `git commit -m "<commit-message>"`. Replace `<commit-message>` with a brief description of the changes you've made.

6. **Push Your Changes**: Push your changes to your forked repository using the command `git push origin <branch-name>`.

7. **Submit a Pull Request**: Go back to your forked repository on GitHub and click on 'New pull request'. Select your branch and submit the pull request.

Remember, before submitting a pull request, ensure that your code passes all tests and does not introduce any bugs. Also, make sure to provide a detailed description of the changes you've made in the pull request.

## Configure .env file

``` dart
BASE_URL=https://api.openweathermap.org/data/2.5
WEATHER_API_KEY=
```

## Contact Information 📧

For any queries or discussions, feel free to reach out to me on:

- [Twitter](https://x.com/imkishansinh)
- [LinkedIn](https://www.linkedin.com/in/kishansinhparmar/)

## Wiki 📖

For more detailed information about the project, please refer to our [Wiki](https://github.com/imkishansinh/flutter-template-by-kishansinh/wiki). There, you'll find comprehensive documentation, tutorials, and other resources that can help you understand and contribute to the project better.

Happy contributing! 😄
