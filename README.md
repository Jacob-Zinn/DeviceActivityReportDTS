## DeviceActivityReport view fails to render until it's repeatedly added to the view hierarchy

**Demo Screen Recording**

https://github.com/user-attachments/assets/51c8b76f-9a5c-4d21-86b9-4f3e1472ab19

**Problem Description**\
The DeviceActivityReport view does not render immediately when added to the view hierarchy. Instead, it requires repeated navigation to the screen hosting the DeviceActivityReport view for it to appear. Furthermore, there is no programmatic way to determine whether the view is being rendered for the user, leading to an inconsistent and often poor user experience.

**Steps to Reproduce**
1. Download the attached sample project.
2. Open the project in Xcode and run it on a simulator or device (tested with iPhone on iOS 16).
3. Follow the on-screen instructions in the app to reproduce the issue. These instructions guide users to quickly trigger the bug.
4. (Optional) Refer to the attached screen recording that demonstrates the issue using the sample app.

**Expected Result**\
The DeviceActivityReport view is immediately rendered and displayed to the user upon being added to the view hierarchy.

**Actual Result**\
The DeviceActivityReport view is not rendered initially. The user must navigate repeatedly to the screen hosting the DeviceActivityReport view for it to render correctly.

**Notes**
- The issue occurs on both the simulator and a physical device.
- The sample app uses the unmodified DeviceActivityReport sample code provided by Apple, demonstrating that the issue is not related to any custom configuration or implementation.
- This problem has been reported in multiple online forums and threads, indicating that it is a widespread issue affecting many developers.

**Environment**
- Xcode Version: Version 16.0 (16A242d)
- iOS Version: Tested on iOS 16
- Device: iPhone (Simulator and Physical Device)
