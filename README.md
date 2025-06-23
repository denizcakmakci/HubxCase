# hubx_case_study

A case study for HubX


## Environment Variables

- The `.env` file is **not included** in the repository.  
- Please create your own `.env` file based on the provided `.env.example` file.

### Where to find `.env.example`?

- It is located in the **root directory** of the project (alongside `pubspec.yaml` and `.gitignore`).

### How to use `.env.example`?

- Copy `.env.example` and rename the copy to `.env`.  
- Replace the placeholder values with your actual API keys and configuration values.

## Code Generation with Freezed and Json Serializable

- This project uses **Freezed** and **Json Serializable** packages to generate immutable models and serialization code.  
- After cloning the repo or whenever you make changes to model classes or add new ones, you need to run code generation.

### How to generate the necessary files?

Run this command in your terminal at the root of the project:

```bash
flutter pub run build_runner build --delete-conflicting-outputs