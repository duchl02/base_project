# base_project

A new Flutter base project.

## Getting Started

- Dart: 2.19.3
- Flutter SDK: 3.7.6

To get started with Blue boilerplate, follow these steps:

1. Install [Flutter](https://flutter.dev)
2. Clone the Blue_boilerplate repository
3. Run `flutter pub get` to download dependencies
4. Run `flutter pub run build_runner build -d` to generate code
5. Run `flutter pub run slang` to generate i18n
6. Run `flutter run` to start the app

## Build Apk Env

Develop:`flutter build apk --dart-define=ENV=development`

Staging: `flutter build apk --dart-define=ENV=staging`

### Project structure

├── lib # Main directory
│   ├── app # MyApp
│   ├── base # Code các base class: BasePageState, BaseBloc
│   ├── constants # const
│   ├── data # Khai báo data_resource, model, repository
│   │   ├── data_sources # Khai báo nguồn data: remote(api), database local, shared preferences
│   │   ├── model # Khai báo models module app
│   │   ├── repositories # khai bảo repositories cho module app
│   ├── di #  Setup DI cho module app
│   ├── i18n # Khai báo đa ngôn ngữ
│   ├── navigation # Khai báo các màn hình và các dialog, bottom sheet được sử dụng trong module app.
│   ├── resource # Khai báo các resources để code UI: Colors, Dimens, generated
│   ├── settings # Khai báo các config global project
│   ├── ui #  UI và Bloc cho từng màn hình.
│   ├── utils # Hàm utils chỉ dùng cho module app.
│   ├── init_application.dart # config khởi tạo application
│   └── main.dart # main file
├── analysis_options.yaml # lint rules
└── pubspec.yaml # pubspec file