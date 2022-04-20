//
//  NetworkManager.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 04. 15..
//

import Foundation
import Network

class NetworkManager: ObservableObject {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkManager")
    @Published var notConnected = false
    var connectionDescription: String {
        if notConnected{
            return "Ellenőrizze az internet kapcsolatot a beállításokban!"
        }else{
            return "Jó az internet kapcsolat"
        }
    }
    
    init(){
        monitor.pathUpdateHandler = { path in
            DispatchQueue.main.async {
                self.notConnected = path.status == .unsatisfied
            }
        }
        
        monitor.start(queue: queue)
    }

}
