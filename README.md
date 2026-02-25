# SliverGrid Widget Presentation Demo

**SliverGrid** is a highly performant Flutter widget used inside a `CustomScrollView` to create flexible, scrollable, and complex 2D array layouts.

## How to Run

1. Ensure you have the Flutter SDK installed on your machine.
2. Create a new Flutter project: `flutter create sliver_grid_demo`
3. Replace the contents of your `lib/main.dart` file with the demo code.
4. Launch your emulator or connect a device, and run: `flutter run`

## Key Attributes Demonstrated

This project highlights three specific properties that control how the `SliverGrid` renders on-screen:

* **`maxCrossAxisExtent`**: Found within the `SliverGridDelegateWithMaxCrossAxisExtent`, this defines the maximum width of each grid item. Instead of hardcoding a set number of columns, this allows Flutter to dynamically calculate how many columns fit on the screen based on the item width.
* **`mainAxisSpacing`**: Also within the grid delegate, this controls the amount of empty padding (in pixels) between the vertical rows as you scroll.
* **`childCount`**: Found within the `SliverChildBuilderDelegate`, this tells the grid exactly how many total items to build before stopping.
