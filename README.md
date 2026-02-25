# SliverGrid Widget Presentation Demo

**SliverGrid** is a highly performant Flutter widget used inside a `CustomScrollView` to create flexible, scrollable, and complex 2D array layouts.

## How to Run

## How to Run

To run this project locally, ensure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed on your machine.

1. Clone this repository:
   ```bash
   git clone [https://github.com/H-levison/Flutter-Widget-Presentation.git]

2. Navigate to the project directory:
   ```bash
   cd widget_presentation

3. Fetch the project dependencies:
   ```bash
   flutter pub get

4. Launch your emulator or connect a physical device, and run the app:
    ```bash
   flutter run

## Key Attributes Demonstrated

This project highlights three specific properties that control how the `SliverGrid` renders on-screen:

* **`maxCrossAxisExtent`**: Found within the `SliverGridDelegateWithMaxCrossAxisExtent`, this defines the maximum width of each grid item. Instead of hardcoding a set number of columns, this allows Flutter to dynamically calculate how many columns fit on the screen based on the item width.
* **`mainAxisSpacing`**: Also within the grid delegate, this controls the amount of empty padding (in pixels) between the vertical rows as you scroll.
* **`childCount`**: Found within the `SliverChildBuilderDelegate`, this tells the grid exactly how many total items to build before stopping.

## Screenshot of UI

![1001339092](https://github.com/user-attachments/assets/6512962f-4263-43e2-a564-9721fdbf0a03)
