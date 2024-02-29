# SwiftUtilityPodDemo
Learn how to build cocoapod library to use in iOS project. This demo library was implemented in SwiftUI_Micro_Nav_Demo Repo.

A CocoaPod library, or simply a pod, is a reusable component of code written in Swift or Objective-C designed specifically for use in Xcode projects. It encapsulates functionalities, resources, and configurations typically used in iOS, macOS, watchOS, tvOS, and other Apple platforms.

### Create a CocoaPod 
1. Install CocoaPods:
   
```sudo gem install cocoapods```

2. Create Your Pod:
2.1. Create a Directory: Choose or create a directory where you want to develop your CocoaPod.
2.2. Initialize CocoaPod: Navigate to the directory you created and run the following command to initialize a new CocoaPod:
   
```pod lib create YourPodName```

 - After create the pod, you can implement functionality, write test and document your pod.
   
3. Versioning and Publishing:
3.1. Increment Version Number: Update the version number in your podspec file (YourPodName.podspec) whenever you make changes to your pod. Follow semantic versioning principles (MAJOR.MINOR.PATCH) to indicate the significance of the changes.
3.2. Publish Your Pod (Optional): If you want to share your CocoaPod with others, you can publish it to a repository like CocoaPods Trunk. First, make sure you have a CocoaPods Trunk account by running pod trunk register and following the prompts. Then, run pod trunk push YourPodName.podspec to publish your pod.
   
```pod trunk register```

```pod trunk push YourPodName.podspec```

5. Using Your CocoaPod:
To use your CocoaPod in another project, you can add it to the project's Podfile:

```pod 'YourPodName', '~> 1.0.0'```

### Update a CocoaPod 
1. Make Changes to Your CocoaPod:
1.1.Update Your Code: Implement the changes or additions you want to make to your CocoaPod. This could include bug fixes, new features, or improvements.
1.2.Update Version Number: Increment the version number in your podspec file (YourPodName.podspec). Follow semantic versioning principles (MAJOR.MINOR.PATCH) to indicate the significance of the changes.
   
   ``` spec.version = "0.0.2"```
   
2. Publish the Updated CocoaPod:
2.1. Commit Changes: Commit your changes to the version control system (e.g., Git).
2.2.Create a New Tag: Create a new tag for the updated version of your CocoaPod. You can do this using the git tag command:
   
   ```git tag -a 0.0.2 -m "Description of changes in this version"```
   
2.3.Push Changes and Tags: Push your changes and the new tag to the remote repository:

 ```git push origin master```
 
 ```git push --tags```
 
2.4.Publish to CocoaPods Trunk (Optional): If you want to make your updated CocoaPod available to others via CocoaPods Trunk, you can run:

```pod trunk push YourPodName.podspec```

3. Update Projects Using Your CocoaPod:
3.1.Update Podfile: In the Podfile of projects using your CocoaPod, update the version constraint to use the new version:
   
```pod 'YourPodName', '~> X.Y.Z'```

3.2.Run pod install: Run pod install in the project directory to update the CocoaPod to the latest version:

```pod install```

## Sources
 - https://guides.cocoapods.org/using/faq.html
 - https://medium.com/@jeantimex/create-your-own-cocoapods-library-da589d5cd270
 - https://medium.nextlevelswift.com/how-to-create-and-use-pod-locally-7bc67ba10c7d
 - https://www.youtube.com/watch?v=atNlyV8Xkm0
 
### Test Project by Lee McCormick
Learning Switf, Xcode and SwiftUI is my passion. This project was built by following the tutorial and source code online.
