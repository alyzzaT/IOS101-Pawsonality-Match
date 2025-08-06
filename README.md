Pawsonality Match App Design Project - README
===

# Pawsonality Match 🐾

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview
### Description

Ever wondered what kind of dog you would be? Take our personality quiz and find out! Answer fun questions about your traits, quirks, and habits, and we’ll reveal the dog breed that best matches who you are. 

### App Evaluation
- **Category:** Entertainment
- **Mobile:** The app uses location data (with user permission) to show users the most popular dog breeds matched by people nearby. Users also receive push notifications to stay updated about new features, quizzes, and special events. 
- **Story:** Pawsonality Match offers lighthearted insight into users’ traits, making it feel like a fun conversation starter or icebreaker. It is entertaining, easy to share, and adds value by combining personality quizzes with pet education. Friends would likely enjoy trying it out and sharing results.
- **Market:** This app appeals to a broad audience of dog lovers, especially children and families who enjoy fun, interactive quizzes.
- **Habit:** Users are likely to try the app once or twice when they first discover it. After that, most will return occasionally. Push notifications may increase engagement frequency.
- **Scope:**
  - **V1:** Users take a simple personality quiz and receive their dog breed match with a brief description. Users can also create profiles to save results and track changes over time.
  - **V2:** Add more quiz questions and multiple quiz themes
  - **V3:** Introduce user profile badges, as a reward for taking the quiz several times. 
  - **V4:** Integrate a tool that allows users to upload photos of themselves, allowing the app to suggest dog breeds based on image analysis.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- As a user, I want to take a personality quiz so I can discover which dog breed matches my personality.
- As a user, I want to save my quiz results to my account so I can look back at them later.
- As a user, I want the app to use my location (with permission) to show the most popular dog breeds around me.


**Optional Nice-to-have Stories**

- As a user, I want to unlock badges or achievements based on how many quizzes I take or results I get.

### 2. Screen Archetypes

- [ ] **Quiz Screen**
    * Users can answer personality questions.
- [ ] **Result Screen**
    * Users can view their matched dog breed
- [ ] **Login / Signup Screen**
    * User can create an account or log in to save and access their quiz results.
- [ ] **User Profile / History Screen**
    * User can view their previously saved quiz results anytime.

- [ ] **Popular Breeds Screen (Location-Based)**
    * User can see the most popular dog breeds matched by people nearby using location data.


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Quiz Screen
* Popular Breeds Screen
* Profile Screen

**Flow Navigation** (Screen to Screen)

- [ ] Login Screen
* => Profile Screen
* => Creation Screen
- [ ] Profile Screen
* => Results Screen 
- [ ] Quiz Screen
* => Results Screen 
- [ ] Popular Breeds Screen (Leader Board)
* => None (future versions may include a leaderboard of all popular breeds)

## Wireframes

<div>
    <a href="https://www.loom.com/share/465041e32e3841c28d4f8068d26ba3de">
      <p>Hand Sketch  Low Fidelity Wireframes Animation - Watch Video</p>
    </a>
    <a href="https://www.loom.com/share/465041e32e3841c28d4f8068d26ba3de">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/465041e32e3841c28d4f8068d26ba3de-7f0bd34e9f620e78-full-play.gif">
    </a>
  </div>

## Schema 

[This section will be completed in Unit 9]

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
