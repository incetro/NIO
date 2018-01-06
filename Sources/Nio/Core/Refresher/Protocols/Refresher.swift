//
//  Refresher.swift
//  Nio
//
//  Created by incetro on 14/07/2017.
//
//

import Foundation

// MARK: - Refresher

public protocol Refresher {
    
    associatedtype RefreshingModel: Model
    associatedtype RefreshingPlain: Plain
    
    /// Update database model properties
    ///
    /// - Parameters:
    ///   - model: database model
    ///   - withPlain: plain object
    /// - Throws: refeshing error
    func refresh(_ model: RefreshingModel, withPlain plain: RefreshingPlain) throws
}

extension Refresher {
    
    /// Update database models
    ///
    /// - Parameters:
    ///   - model: database models
    ///   - withPlain: plain objects
    /// - Throws: refeshing error
    func refresh(_ models: [RefreshingModel], withPlains plains: [RefreshingPlain]) throws {
        if models.count == plains.count {
            for i in 0..<models.count {
                try self.refresh(models[i], withPlain: plains[i])
            }
        }
    }
}
