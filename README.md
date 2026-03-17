# 📱 Flutter SearchAnchor App

A modern Flutter app demonstrating a SearchAnchor-based search bar with dynamic suggestions and a detailed second screen UI.

---

## 🚀 Run Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/munhugues/searchwigdet.git
   ```


2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

---

## 🔍 About the Widget

This project uses SearchAnchor to create a modern search experience:
- Opens suggestions dynamically
- Filters results in real-time
- Navigates to a detailed second screen

---

## ⚙️ Key Attributes Explained

### 1. builder
- Builds the SearchBar UI
- Connects the search field with the controller
- Handles tap and input events

### 2. suggestionsBuilder
- Generates filtered search results
- Updates dynamically based on user input
- Displays clickable suggestions

### 3. SearchController
- Controls opening/closing of the search view
- Retrieves user input (controller.text)
- Manages interactions between UI and logic

---

