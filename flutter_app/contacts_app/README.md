# Contacts App

A contacts app created using flutter

## Getting Started

### Widget
- Basic Building Block ie everything in a flutter app is a widget
- The most used pre-built widgets:
   #### 1. Scaffold
   - Lays out the whole 'page; layout
   #### 2. App Bar
   - Contains title and navigation (back button, action buttons)
   #### 3. FloatingActionButton
   #### 4. Text
   #### 5. Image
   #### 6. ListTile
   - Saves you from writing boilerplate layout code for list items since many of the widgets displayed in a list have a lot in common
    #### 7. ListView
    - Displays a scrollablle list
    #### 8. Column
    - Displays a non-scrollable vertcal list
    #### 9. Row
    - Displays a non-scrollable horizontal non-scrollable list
  
### Stateful and stateless widget

Stateful and stateless widgets are the fundamental building blocks for creating user interfaces in Flutter, a popular framework for building mobile apps. Here's a breakdown of the key differences between them:

**Stateless Widgets:**

1. Simple and efficient: Stateless widgets are ideal for representing UI elements that don't change based on user interaction or external data. They are lightweight and efficient to use.

2. Immutable: Once a stateless widget is built, its configuration and appearance are fixed. They cannot be rebuilt dynamically.
   
Examples: Text, Icon, RaisedButton - These widgets display static information or perform a single action and their appearance remains the same throughout the app.

**Stateful Widgets:**

1. Dynamic and interactive: Stateful widgets are suited for UI elements that need to update based on user interaction (e.g., button clicks), or changes in data (e.g., network calls). They offer more flexibility for creating dynamic and interactive interfaces.

2. Mutable: Stateful widgets manage their own internal state, which can be modified to trigger a rebuild and update the UI.

3. Requires state management: To manage the state of a stateful widget, you need to create a separate class that holds the state data and logic for updating it. This is often referred to as "state management" and can involve libraries like Provider or BLoC.
   
Examples: Checkbox, Radio, Slider, TextField - These widgets allow user interaction that changes their state (checked/unchecked, selected value) and the UI reflects those changes.

**Here's an analogy:**

Think of a stateless widget like a printed photograph - it displays a fixed image and doesn't change. A stateful widget is like a live video feed - it can adapt and show different content based on what's happening.

**Choosing the right widget:**

When building your app's UI, start by considering if the element needs to change dynamically. If not, a stateless widget is a good choice for its simplicity and efficiency.

If the UI element needs to be interactive or update based on data, then a stateful widget and proper state management are necessary
