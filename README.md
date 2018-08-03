# MVPTemplate
Simple generator for Model View Presenter

## Installation
This will install the template files to a new system level directory structure that isn't buried inside of the AndroidStudio.app package, but instead the system level `.android` folder as stated [here](https://issuetracker.google.com/issues/37105193#comment5).

  - Run the command `make install_templates` from inside this directory to install
  - Restart Android Studio
  - Update or uninstall with `make uninstall_templates`

## Usage
  - Create a new package to hold the files
  - Right Click on the package and select **New > Other > MVP...**
  - Type your module name.
  - Type your layout name.
  - Click **Finish**

## Architecture
MVP with state. A Module level class defines the `ViewState` object and `Presenter` and `View` interfaces.

`ViewState` has Loading, Error, Empty and Data states with corresponding information that's required. The Data state has a `ViewModel` to bind to the view.

A Fragment simply conforms to `View` which exposes a state property that will internally render itself.

The `Presenter` is the mechanism in which a `View` can ask for its model to be updated.

This completes the loop for Android Screens using this architecture.
