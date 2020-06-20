//
//  UserPlainObject.swift
//  DAO
//
//  Created by incetro on 26/08/2018.
//

import DAO

// MARK: - UserPlainObject

struct UserPlainObject: Plain {
    
    // MARK: - Properties

    var uniqueId: UniqueID {
        return UniqueID(value: id)
    }

    let id: Int
    let name: String
    let age: Int
    let dialogs: [DialogPlainObject]
}