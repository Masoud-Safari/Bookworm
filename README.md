# Bookworm: Your Digital Reading Companion

## Introduction

Bookworm is an iOS app developed with SwiftUI and SwiftData, designed to serve as a digital companion for avid readers. This project was undertaken as part of my journey to master SwiftUI and to delve into the intricacies of data persistence in iOS apps. Bookworm allows users to track their reading list, rate books, and store personal reviews, enhancing their reading experience through organization and reflection.

## Project Description

### What the App Does

- **Functionality:** At its core, Bookworm provides a platform for users to add books to their personal reading list, along with details such as the author's name, book title, genre, and their personal rating and review. Users can remove books from their list as their reading preferences evolve. The app showcases a list of books and detailed views for each entry, offering an intuitive and accessible interface for managing reading activities.
- **Technologies Used:** Bookworm is built using SwiftUI for its user interface, incorporating SwiftData for data persistence. This combination ensures a seamless user experience while offering robust data management capabilities. The app demonstrates the use of SwiftUI forms, alerts, alongside SwiftData relationships and data modeling.
- **App Demo:**
<img src="https://github.com/Masoud-Safari/Bookworm/blob/a6354511525f71b10d88f9f268d8806931bdf965/Bookworm-screen-recording.gif" width="320">

### Purpose and Learning

- **Objective:** The primary goal of creating Bookworm was to understand and implement SwiftData within a SwiftUI application, focusing on managing complex data models and ensuring data persistence across app sessions. This project also provided an opportunity to enhance UI/UX design skills within the SwiftUI framework.
- **Challenges and Solutions:** 
  - **Data Persistence:** Integrating SwiftData into a SwiftUI project was initially challenging, especially managing the context and ensuring data integrity. Through detailed study and implementation, I learned to efficiently manage Data, utilizing `@Query` and `@Environment(\.modelContext)` to interact with the database.
  - **User Interface Design:** Designing a user-friendly interface that elegantly displays a potentially large amount of data was another hurdle. I utilized SwiftUI's `List`, `Form`, and `NavigationStack` components to create a structured and navigable layout, improving the overall user experience.
- **Skills Gained:** This project significantly improved my understanding of data persistence with Core Data in SwiftUI applications. It also enhanced my skills in UI/UX design, particularly in creating responsive and user-friendly interfaces.

## Acknowledgments

This project was built following the Hacking with Swift tutorial on SwiftUI. I would like to thank [Paul Hudson](https://www.hackingwithswift.com) for creating such a comprehensive and beginner-friendly guide to iOS development.

## Contact Information

[LinkedIn](https://www.linkedin.com/in/masoud-safari/)
[Website](https://masoudsafari.com)
