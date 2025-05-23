//
//  Reducing.swift
//  Riveting
//
//  Created by Ethan Van Heerden on 2/22/25.
//

/// A `Reducing` type is a mapper of a Domain state to a View State used for View updates.
/// It is used to abstract our Domain (model) representation into a more convenient type to create
/// Views from.
public protocol Reducing {
    associatedtype Domain
    associatedtype ViewState
    
    /// Maps a Domain state to a View State. This is mainly used to abstract a model implementaiton
    /// into a type that *only* contains what the View needs to render.
    /// - Parameter domain: The Domain to map to a View State.
    /// - Returns: The View State that is created from the given Domain.
    func reduce(from domain: Domain) -> ViewState
}
