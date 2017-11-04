import Foundation
import Logboard
import HaishinKit

protocol LogboardServiceDelegate: class {
    func onData(_ data:Logboard.Data)
}

final class LogboardService: HaishinKit.NetService {
    weak var delegate:LogboardServiceDelegate?

    func client(inputBuffer client: NetClient) {
        delegate?.onData(Logboard.Data(client.inputBuffer))
        client.inputBuffer.removeAll()
    }
}
