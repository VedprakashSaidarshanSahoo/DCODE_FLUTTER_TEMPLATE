# 🚀 Universal Flutter App Template

This template provides a production-ready starting point for **any Flutter application** (ERP, TODO, CRM, Chat, Booking, Management tools, etc.). It includes:

- ✅ Named routing with `go_router`
- ✅ State management via `flutter_bloc` (Bloc + Cubit)
- ✅ Animation support (`lottie`, `flutter_animate`, `animations`)
- ✅ Local storage: SQLite + Hive
- ✅ Shared Preferences for session/auth
- ✅ API handling using `http`
- ✅ Reusable UI widgets and modular folder structure

---

## 📁 Project Structure

```
lib/
│
├── main.dart                   # Entry point
├── app.dart                    # Root app with GoRouter & BlocProviders
│
├── core/                       # Core constants, themes, and utilities
│   ├── constants/              # Color, text styles, app strings
│   ├── theme/                  # Light/dark themes
│   └── utils/                  # Validators, extensions, helpers
│
├── config/
│   ├── env/                    # Environment loader (.env)
│   └── router/                 # GoRouter config (app_router.dart)
│
├── data/                       # Models, local & remote data sources
│   ├── models/                 # Base data models
│   ├── local/                  # Hive/SQLite logic
│   ├── remote/                 # HTTP API client and endpoints
│   └── repositories/           # Data access layer
│
├── logic/                      # Business logic layer
│   ├── blocs/                  # Bloc-based state management
│   └── cubits/                 # Cubit-based state management
│
├── presentation/
│   ├── widgets/                # Reusable widgets (buttons, loaders)
│   └── screens/                # All screens go here (e.g. welcome, login, dashboard)
│
└── services/                   # SharedPrefs, database, logging services
    ├── storage_service.dart
    ├── database_service.dart
    └── logger_service.dart
```

---

## 🧱 Preinstalled Dependencies

```yaml
dependencies:
  flutter:
  flutter_bloc:
  bloc:
  go_router:
  http:
  sqflite:
  hive:
  hive_flutter:
  path_provider:
  shared_preferences:
  flutter_dotenv:
  equatable:
  intl:
  logger:
  lottie:
  animations:
  flutter_animate:
  cupertino_icons:
```

---

## 🔁 Navigation Setup

- Use `go_router` for named routing with animation transitions.
- Define all routes in `lib/config/router/app_router.dart`.

---

## 🎭 Animations

- Use `flutter_animate` for basic entry animations.
- Use `animations` for `SharedAxisTransition`, `FadeThrough`, `FadeScale`, etc.
- Use `lottie` for vector-based JSON animations.

---

## 📦 Storage Options

- `SharedPreferences`: Store login status, theme mode, etc.
- `Hive`: Store local cache, lightweight data
- `SQLite`: For structured relational local storage (e.g. offline-first apps)

---

## 🧠 State Management

- Use `Bloc` when you have Events + States (e.g. network calls, async flows)
- Use `Cubit` for simpler flows like toggling theme, managing small UI state
- All logic classes go into `lib/logic/` folder

---

## 🔌 API Handling

- Store all API URLs in `.env` and load using `flutter_dotenv`
- Create API services in `data/remote/`
- Use `http` package for REST API calls
- Handle errors and responses in repositories

---

## 🧩 Shared Utilities

- `lib/core/constants/` → App-wide configs (colors, spacing, padding, strings)
- `lib/core/theme/` → Central theme config
- `lib/core/utils/` → Helpers like `DateFormatter`, `Validators`, etc.

---

## 📤 Services Layer

- `StorageService`: Wrap SharedPreferences
- `DatabaseService`: For SQLite/Hive initialization and utility
- `LoggerService`: Wraps `logger` package for unified logs

---

## 🚀 Getting Started

1. Clone this repo or use as base
2. Run `flutter pub get`
3. Add your `.env` under `lib/config/env/`
4. Add your custom screens in `presentation/screens/`
5. Add your routes in `app_router.dart`

---

## 📌 Best Practices Followed

- Clean Architecture principles (Separation of Concerns)
- BLoC state management
- Modular, scalable folder structure
- Reusable components
- Prepared for offline/online hybrid mode
- Ready for login/session control

---

## ✅ Ready For...

- ✅ Auth-based login flows
- ✅ Offline-first apps
- ✅ Admin dashboards or CRM
- ✅ Booking/reservation systems
- ✅ Chat or real-time apps (with Firebase/socket layer)
- ✅ ERP systems (HRMS, accounting, etc.)
