import CoreNFC
import PromiseKit

@available(iOS 13.0, *)
@objc(LastlastModule)
class LastlastModule: NSObject , NFCTagReaderSessionDelegate {
    
    var session:NFCTagReaderSession?
    
    @objc(multiply:withB:withResolver:withRejecter:)
    func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        //resolve(a*b)
        
        session = NFCTagReaderSession(pollingOption: .iso14443, delegate: self, queue: DispatchQueue.global())
        session?.alertMessage = "Hold your iPhone near the ISO7816 tag to begin transaction."
        session?.begin()
    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didDetect tags: [NFCTag]) {
        print("hey there")
        print(tags.count)
    }
    
    func tagReaderSessionDidBecomeActive(_ session: NFCTagReaderSession) {
        print("active")
    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didInvalidateWithError error: Error) {
        print("error")
    }
    
}
