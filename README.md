# Facebook-Auth-With-Firebase-iOS-
A simple iOS app to enable Facebook Login with Firebase (Swift)
This app uses Firebase to enable Facebook Authentication with an iOS device.
The purpose of making this app was to get an idea of how Facebook authentication works and how to use segues to perform


other operations after logging in.
Some of the docs on the Facebook Developer site aren't updated for Swift so this app targeted making the authentication

work for the latest version of the Facbook SDK, Swift and Xcode.

First, the user can login to the app using their Facebook login.
The segue in my app, after login, simply generates random quotes when the user clicks on a button.
Then the user can click a button to go back to the original view (go back a screen) and click on the FB log out button.

Make sure to update the info.plist with your app id (they've been replaced with "//" in the code here)
