//
//  FileManager-DocumentsDirectory.swift
//  BucketList
//
//  Created by Alberto Landi Cortiñas on 5/17/22.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
