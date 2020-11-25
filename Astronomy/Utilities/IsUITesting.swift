//
//  IsUITesting.swift
//  Astronomy
//
//  Created by Alfredo Colon on 11/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

var isUITesting: Bool {
    return CommandLine.arguments.contains("UITesting")
}

