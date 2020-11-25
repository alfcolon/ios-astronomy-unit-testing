//
//  FilterImageOperation.swift
//  Astronomy
//
//  Created by Alfredo Colon on 11/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation


import UIKit

class FilterImageOperation: Operation {
    init(fetchOperation: FetchPhotoOperation) {
        self.fetchOperation = fetchOperation
    }
    
    override func main() {
        if let data = fetchOperation.imageData,
            let image = UIImage(data: data) {
            self.image = image.filtered()
            NSLog("Finished filtering image")
        }
    }
    
    let fetchOperation: FetchPhotoOperation
    private(set) var image: UIImage?
}
