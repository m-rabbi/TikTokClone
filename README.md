# TikTok Clone - iOS App 📱

A SwiftUI-based iOS application that replicates core TikTok functionality, demonstrating modern iOS development practices and clean architecture patterns.

## ✨ Features

### Core Functionality
- **Video Feed**: Vertical scrolling feed with custom AVPlayer implementation
- **User Authentication**: Login and registration with basic form validation
- **Profile Management**: User profile viewing and editing capabilities
- **Media Upload**: Video selection and upload interface (UI only)
- **User Discovery**: Basic user search and profile viewing

### Technical Implementation
- **Form Validation**: Basic email and password validation for authentication
- **Video Playback**: Custom AVPlayer wrapper with tap-to-pause functionality
- **State Management**: MVVM architecture with ViewModels
- **Photo Picker**: Native PhotosPicker integration for profile images
- **Navigation**: Tab-based navigation with SwiftUI NavigationStack

## 🏗️ Architecture

### MVVM Architecture
```
├── Models/          # Data models (User, Post)
├── Views/           # SwiftUI views and UI components
├── ViewModels/      # Business logic and state management
├── Services/        # Network and data layer
└── Utils/          # Extensions and utilities
```

### Key Design Decisions
- **Protocol-Oriented Programming**: AuthenticationFormProtocol for form validation
- **Dependency Injection**: Service layer for testability
- **Reusable Components**: Modular UI components for consistency

## 🛠️ Technologies

### Core Technologies
- **SwiftUI** - Modern declarative UI framework
- **AVKit** - Video playback and media handling
- **PhotosUI** - Native photo picker integration
- **Combine** - Reactive programming for data flow

### Third-Party Libraries
- **Kingfisher** - Efficient image loading and caching
- **Firebase** - Backend services (authentication, storage)

## 📱 Implementation Details

### Authentication System
- **Login/Registration Forms**: Basic form validation (email format, required fields)
- **Form Validation**: Email format checking and required field validation
- **UI State Management**: Button enable/disable based on form validity

### Video Feed
- **Custom Video Player**: AVPlayer wrapper with custom controls
- **Vertical Scrolling**: Paging-style scroll with video switching
- **Tap Controls**: Tap to pause/play video functionality
- **UI Overlay**: Like, comment, share, and bookmark buttons (UI only)

### Profile Management
- **Profile Viewing**: User profile display with avatar and stats
- **Edit Profile**: Full-screen modal for profile editing
- **Photo Upload**: Profile picture selection using PhotosPicker
- **Form Fields**: Name, username, and bio editing capabilities

### Media Upload
- **Video Selection**: UI for video upload (functionality not implemented)
- **Caption Input**: Text field for post captions
- **Preview Display**: Video thumbnail display

## 🚀 Getting Started

### Prerequisites
- Xcode 15.0+
- iOS 16.0+

### Installation
1. Clone the repository
2. Open `TikTokClone.xcodeproj` in Xcode
3. Build and run the project

### Configuration
- Configure Firebase credentials in `GoogleService-Info.plist`
- Set up authentication providers in Firebase Console

## 🎓 Learning Outcomes

This project demonstrates proficiency in:
- **SwiftUI Development**: Complex UI patterns and state management
- **Video Handling**: AVPlayer integration and custom controls
- **Form Validation**: Basic input validation and user feedback
- **Navigation**: Tab-based and stack-based navigation
- **Photo Integration**: Native photo picker and image handling
- **MVVM Architecture**: Clean separation of concerns

## 🔮 Future Enhancements

### Planned Features
- Real-time video upload functionality
- Comments and social interactions
- Advanced video editing capabilities
- Push notifications
- Real-time data synchronization

## 👨‍💻 About the Developer

**Md Fazly Rabbi** - iOS Developer passionate about creating intuitive mobile experiences with modern Swift and SwiftUI.

### Connect
- **GitHub**: [@m-rabbi](https://github.com/m-rabbi)

---

*Built with ❤️ using SwiftUI and modern iOS development practices*

