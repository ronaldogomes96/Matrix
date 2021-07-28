# Matrix

## Quick Start 
1. Get Carthage by running `brew install carthage`
2. Create a Cartfile in the same directory where your `.xcodeproj` is, with: `touch Cartfile`
3. Add the following line in the Cartfile 
  ```
git "git@github.com:ronaldogomes96/Matrix.git" ~> 1.0.0
```
4. As Carthage doesn't work out of the box with Xcode 12, follow the steps in the [Carthage Workaround](https://github.com/Carthage/Carthage/blob/master/Documentation/Xcode12Workaround.md).
5. Drag `Carthage/Build/iOS/Matrix.framework` into your application target’s General > Linked Frameworks and Libraries.
6. Add a New Run Script Phase for the application target’s Build Phases with
  ```
/usr/local/bin/carthage copy-frameworks
```
7. In the same run script, add **Input Files**
```
$(SRCROOT)/Carthage/Build/iOS/Matrix.framework
```
8.  And the **Output Files**
```
$(BUILT_PRODUCTS_DIR)/$(FRAMEWORKS_FOLDER_PATH)/Matrix.framework
```
