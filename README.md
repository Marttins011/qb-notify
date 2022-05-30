# qb-notify
Edited notify design for QBCore

# Preview:

![image](https://user-images.githubusercontent.com/89866234/171038388-36f4a9c6-3f67-4b22-b5b0-983c34fb1156.png)

# Original Script:
- https://github.com/tnj-development/tnj-notify

# Place it at qb-core/client/functions.lua:
```
function QBCore.Functions.Notify(text, texttype, length)
    exports['tnj-notify']:Notify(text, texttype, length)
end
```
