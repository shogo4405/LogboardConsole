import Foundation
import HaishinKit

protocol LogboardServiceDelegate: class {
    func onData(_ data:Data)
}

final class LogboardService: HaishinKit.NetService {
    weak var delegate:LogboardServiceDelegate?

    func client(inputBuffer client: NetClient) {
        delegate?.onData(client.inputBuffer)
        client.inputBuffer.removeAll()
    }
}
