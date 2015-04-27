#Designing Mobile Apps For The Enterprise

##Tutorial: Intro To Storyboards & Seques
Last tutorial we learned how to create beautifully designed apps using Sketch, and share these hi-fi prototypes using Flinto. Up until this point however, everything has been html based. It's time for us to try our hand at making a native iOS app. 

###Introducing Xcode
[Xcode](https://developer.apple.com/xcode/) is Apple's integrated development environment (IDE) for building native apps - mobile and desktop. Xcode is only available for Macintosh computers. If you don't have a Mac, unfortunately you can't complete the rest of the tutorials. If you have a mac, go to the App Store and [download it now](https://developer.apple.com/xcode/downloads/). This tutorial uses the latest public version of XCode (6.3) and Yosemite 10.10.3.

![images/app-store.png]()

Once Xcode is installed, go ahead and create a new project, CloudTasks. 

![images/new-project.png]()

Once your project is created, you will be presented with a project window that contains the project files on the left, the editor in the center of the screen, and contextual palette and controls on the right. 

![images/CloudTasks_xcodeproj.png]()

###Adding Images
Now, select Images.xcassets from the project menu on the left. This file is like a binder for storing all of your image assets for your project. It has support for different resolutions of images depending on which device the app is running on, and lets you reference images in your app by their name for dynamic rendering. 

If you have not done so already, export your sketch artboards from the previous tutorial.  

[VIDEO: export artboards]

Then, drag them into the Images.xcassets file.

![images/xcassets.png]()

###Storyboards
Find the file Main.storyboard in the project files on the left and click it.

![images/main-storyboard.png]()

Storyboards work similar to the artboards you created in Sketch; they are the visual representation of an app. I like to think of storyboards as comic strip where I can layout the different scenes and tell my story in the app.Right now you only see one screen, View Controller, with an arrow pointed to it. This arrow represents where your app starts. If you ran this project now, this View Controller would start up. But it's not too exciting yet - there is nothing on it.

Unlike Sketch and artboards which don't support transitions (we used [Flinto](http://flinto.com) to create html-based transitions), Storyboards make it incredibly easy to connect screens together. From the object library palette in the bottom right, drag two more view controllers onto the storyboard. These will map to the three artboards we created in sketch. 

![images/add-storyboards.png]()

Drag and drop an Image View component into each View Controller and make it fill the controller. 

![images/image-artboards.gif]()

Finally, for each Image View Component, change the source image to point to the artboard images you added, making sure that the ViewController with the arrow uses the Task List image, and Change Status image and Swipe Action image match the screenshot below.

![images/set-imagename.png]()

![images/addstoryboards.png]()

You may notice when specifying images into your View Controllers that the images may look a little stretched. This is because our View Controllers are set to width and height of Any. Once we get into autolayouts in a later tutorial, this will make more sense, but for now, a width of height of Any tells Xcode to render the app at the same size for any device (iphone 4,5,6, 6+, iPad etc). In order to make the images fit well, select the View Controllers view,  right click and drag, then choose Equal Widths. Repeat,  and this time choose Equals Heights.

![images/equalsWH.gif]()

Go ahead and repeat this for the two other view controllers.

###Transitions with Seques
It's time to run your app. Click play to launch the simulator.

![images/runapp.png]()

Once it loads in the iOS simulator, you will be presented with a screen that looks exactly like the Task List image. This is because that View Controller is specified as the initial controller (indicated by the arrow on our storyboard). The next thing we want to add is transitions between screens. In Xcode, these transitions are managed by Seques. 

Seques allow you to specify which screen to transition to, the animation to use in the transition, and which component triggers the transition (buttons, or swipes for example) without the need to write any code. We are going to create some very simple seques between our views. In order to do this, we need to tell our app that  the imageview component which we added can accept tap events. Unlike components like buttons which are enabled to handle defaults by default, images we need select the User Interaction enabled checkbox on our image view, and  add a tap recognizer. 

Start by selecting the image view component, then changing it's properties to accept user interactions.

![images/userinter.png]()

Now, select the tap recognizer from the object palette, drop it onto the image,  select the component, right click,  drag to the Swipe Action controller, and choose show from the popup menu. That's all we need to do to make a transition in iOS. 

![images/segue-tap.gif]()

Next, we will create one more seques, a popup model transition to show the Change Status screen. We will use the popup model transition because it allows us to specify a transition animation. In this case, we want to transition to rise from the bottom to simulate the menu item appearing.  Repeat the process from above by adding the tap recognizer, but select the model option from the popup

![images/segue-model.gif]()

Run the app again, this time tapping on the screens. You should now have some  transitions. Nice huh? Of course, we can't go back in our transitions as we never connected what iOS developer call an unwind transition. Don't worry, you will have plenty of hands on experience soon working with more seques when we build our final app.

[insert video of our running app]

###Summary
During this tutorial, we had a brief introduction to Xcode, how to create a project, add images, and got hands on with storyboards and seques. At this point in the series, we can consider our app design complete. The next set of tutorials will build upon our introduction to Xcode and start to learn how to write Swift. Grab a coffee, show your friends your app, and get ready. Congratulations!

