# 🕰️ Watch Collection Flutter App

This is a simple Flutter application that showcases a collection of analog, digital, and chronograph watches.\
The app fetches information from predefined data models and displays a list of watches in a user-friendly format. The UI includes buttons and gesture interactions, offering a clean and functional experience for users.

[Flutter watch app preview](https://drive.google.com/file/d/1pPJeVYwOFy8v-kGviqd4OptJFxa0MSt6/view?usp=sharing)

## 📱 Features

- **Display Watches :** The app shows a collection of watches with details such as name, type (analog, digital, chronograph), fashion category, and price.
- **Simple Navigation :** Easily navigate through watch details with intuitive buttons.
- **Custom Widgets :** Each watch is displayed using custom widgets designed for reusability and scalability.
- **Image Assets :** Integrated icons for user interaction such as navigating to the next watch item.


## 🎨 UI Overview

The app consists of a list view displaying watches and their details:

- **Watch Name :** The name of the watch is displayed in bold text.
- **Details :** A brief description of the watch’s kind, fashion, and price is shown.
- **Next Button :** A right arrow button is placed to navigate to further interactions or details (future enhancements).


## 🛠️ Technologies Used

- **Flutter :** The core framework for building the UI.
- **Dart :** The programming language used to implement the logic and UI components.
- **State Management :** Utilizes StatefulWidget for managing and updating the UI dynamically.
- **Asset Management :** Uses Image.asset() to display images stored in the app’s assets folder.
- **Custom Models :** Defined models for watches (WatchModel, PopularWatchModel, etc.) to handle and structure watch data.

## 🚀 Getting Started

### Prerequisites
Ensure you have Flutter installed. You can check the official Flutter installation guide if you haven’t already set it up.

### Clone the Repository
```bash
git clone https://github.com/ArpanSurin/Watch-Collection-Flutter-App.git
```

### Install Dependencies
Navigate to the project directory and run:
```bash
flutter pub get
```

### Run the App
After installing the dependencies, you can run the app using:
```bash
flutter run
```

Make sure you have a connected device or an emulator running.


## 💡 How it Works

### Watch Model

Each watch is represented by a WatchModel class that holds details like:

- `name` : The name of the watch.
- `kind` : The type of watch (analog, digital, chronograph).
- `fashion` : The fashion category (casual, formal, etc.).
- `ammount` : The price of the watch.

## 🛠️ Future Enhancements

- **Detailed Watch View :** Clicking the "Next" button could navigate to a detailed page of the watch with more specifications.
- **Filtering :** Add a filter to search by watch type (analog, digital, chronograph) or price range.
- **API Integration :** Fetch real-time data from a watch-related API instead of using static data.
