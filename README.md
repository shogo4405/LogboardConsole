# LogboardConsole
iOS, macOS, tvOS, watchOS Debugging Tool, Logging console via Network.

LogboardConsole is a logging console applicaiton.

## How to build
### Download
```
git clone https://github.com/shogo4405/LogboardConsole.git
cd LogboardConsole
carthage update
```
### Build
Then open xcode and [Product] -> [Archive].

## Logging
LogboardConsole requires Logboard module as client.

Please install and integration your project.

### SocketAppender
```
let logger = Logboard.with("identifier")
let socket = SocketAppender()
socket.connect("toHost", 22222)
logger.appender = socket
```

## License
New BSD

## Donation
Bitcoin
```txt
1CWA9muX36QKBdJiRQJGpu2HvchfEpJbWr
```


