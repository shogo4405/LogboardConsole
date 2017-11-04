# LogboardConsole
iOS, macOS, tvOS, watchOS Debugging Tool, Logging console via Network.  
LogboardConsole is a logging console applicaiton.

![Screenshot](https://github.com/shogo4405/LogboardConsole/blob/master/README/screenshot.gif)

## How to build
### Download
```
git clone https://github.com/shogo4405/LogboardConsole.git
cd LogboardConsole
carthage update --platform macOS
```
### Build
Open xcode 'LogboardConsole' and [Product] -> [Archive].

## Logging
LogboardConsole requires [Logboard](https://github.com/shogo4405/Logboard) module as client.  
Please install and integration your project.

### SocketAppender
Logboard SocketAppender is a LogboardConsole client.
```
let logger = Logboard.with("identifier")
let socket = SocketAppender()
socket.connect("toHost", 22222)
logger.appender = socket
```

## License
New BSD

