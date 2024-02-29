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

### Command lines
###### Create a new CocoaPod library with the specified name.

```pod lib create YourPodName```

###### This command registers your Pod with the CocoaPods trunk repository 

```pod trunk register```

###### Pushes your Podspec file (YourPodName.podspec) to the CocoaPods trunk repository. This makes your Pod publicly available for others to use.

```pod trunk push YourPodName.podspec```

###### Creates a Git tag named "0.0.2" with a descriptive message about the changes in this version. This helps track versions in your Git repository.

```git tag -a 0.0.2 -m "Description of changes in this version"```

###### Pushes the newly created tag to the remote repository on GitHub or your chosen platform.

```git push origin master```
```git push --tags```

###### Validates your Podspec file against CocoaPods standards and checks for any errors or warnings. This helps ensure your Pod is well-formatted and adheres to CocoaPods guidelines.

```pod spec lint```

###### Pushes your Podspec file to the CocoaPods trunk, even if there are warnings present. Use this with caution, as warnings might indicate potential issues with your Pod. Only use this if you understand and are willing to accept the risks involved.

```pod trunk push SwiftUtilityPodDemo.podspec --allow-warnings```

###### Pushes your Podspec file to the CocoaPods trunk, skipping import validation. This is **highly discouraged** as it can lead to compatibility issues with other Pods. Only use this option if you absolutely know what you are doing and understand the potential consequences.

```pod trunk push SwiftUtilityPodDemo.podspec --allow-warnings --skip-import-validation```

###### Add the local SwiftUtilityPodDemo repository to the project.

```pod repo add SwiftUtilityPodDemo https://github.com/leemccormick/SwiftUtilityPodDemo```

###### Updates the local CocoaPods spec repository to fetch the latest information about available Pods. This is optional but recommended to ensure you have the latest information about available Pods.

```pod repo update```

###### Downloads and installs the dependencies specified in your Podfile based on the information in the updated local CocoaPods spec repository.

```pod install```

### Published Pods

<img width="400" hieght="400"  alt="0 0 3 Pod Published" src="https://github.com/leemccormick/SwiftUtilityPodDemo/assets/57606580/7204b8cb-a9e9-48d6-9589-719e6f27271e">
<img width="400" hieght="400"  alt="0 0 5 Pod Published" src="https://github.com/leemccormick/SwiftUtilityPodDemo/assets/57606580/749c7397-c272-42e8-be0f-e4db272a8824">
<img width="400" hieght="400"  alt="0 0 6 Pod Published" src="https://github.com/leemccormick/SwiftUtilityPodDemo/assets/57606580/c6b55738-3ef5-4493-b72d-096c3d714229">
<img width="400" hieght="400"  alt="0 0 8 Pod Published" src="https://github.com/leemccormick/SwiftUtilityPodDemo/assets/57606580/0187d71c-d8f5-4d50-b5fb-497bbfcdf3d8">

### Installed Pods

<img width="400" hieght="400"  alt="0 0 3"  src="https://github.com/leemccormick/SwiftUtilityPodDemo/assets/57606580/cbebd2ca-4065-4ffb-a88d-57b1c9079e1e">
<img width="400" hieght="400"  alt="0 0 5"  src="https://github.com/leemccormick/SwiftUtilityPodDemo/assets/57606580/f4625c36-2fc2-4624-8ced-f822610c209c">

## Sources
 - https://guides.cocoapods.org/using/faq.html
 - https://medium.com/@jeantimex/create-your-own-cocoapods-library-da589d5cd270
 - https://medium.nextlevelswift.com/how-to-create-and-use-pod-locally-7bc67ba10c7d
 - https://www.youtube.com/watch?v=atNlyV8Xkm0
 
### Test Project by Lee McCormick
Learning Switf, Xcode and SwiftUI is my passion. This project was built by following the tutorial and source code online.
