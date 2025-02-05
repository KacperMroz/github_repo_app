![App preview](https://github.com/KacperMroz/github_repo_app/blob/17a7f33da4c5f6d691867a161a08739d4fc89e0c/github_repo.gif)

# GitHub Repo App

A Github Repo App project created in flutter using Flutter Bloc. App supports Android and IOS.

## Getting Started

Th Github Repo App group allows to find the repositories of the user and the details of the repository.

## How to Use

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/KacperMroz/github_repo_app
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get 
```

**Step 3:**

This project uses `inject` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

## GitHub Repo App features

* Splash
* Home
* Repository Details
* Issues
* Pull Requests

### Libraries & Tools Used

* Bloc
* Freezed
* GetIt
* Dio
* Retrofit
* GoRouter

### Folder Structure

```
lib/
|- app
|- features
|- injection
|- modules/
    |- data
    |- domain
    |- foundation
|- services
```