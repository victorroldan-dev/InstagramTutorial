//
//  UserModel.swift
//  InstagramTutorial
//
//  Created by Victor Roldan on 13/08/22.
//

import Foundation

struct UserModel : Identifiable{
    let id = UUID()
    let username : String
    let profilePicture : String
    let city : String
    let isVerified : Bool
    
    static func getUsers() -> [UserModel]{
        return [
            .init(username: "karennne", profilePicture: "person-1", city: "Tokyo, Japan", isVerified: true),
            .init(username: "pablo323", profilePicture: "person-2", city: "Caracas, Venezuela", isVerified: true),
            .init(username: "joshua_l", profilePicture: "person-3", city: "Miami, US", isVerified: false),
            .init(username: "themoon", profilePicture: "person-4", city: "London, UK", isVerified: false),
            .init(username: "hero_232", profilePicture: "person-5", city: "Montreal, Canada", isVerified: true),
            .init(username: "theworld_2", profilePicture: "person-6", city: "New York, US", isVerified: false),
            .init(username: "doggg", profilePicture: "person-7", city: "Beijing, China", isVerified: false),
            .init(username: "someone", profilePicture: "person-8", city: "Rome, Italy", isVerified: true),
            .init(username: "victorroldan.dev", profilePicture: "victorroldan.dev", city: "Caracas, Venezuela", isVerified: true),
        ]
    }
}

struct StoryModel : Identifiable{
    let id = UUID()
    var user : UserModel
    let isLive : Bool
    
    static func getStories()-> [Self]{
        return UserModel.getUsers().map{ StoryModel(user: $0, isLive: ([true, false].randomElement())!)}
    }
}

struct TimelineModel : Identifiable{
    let id = UUID()
    let photo : String
    let user : UserModel
    
    static func getPosts()-> [Self]{
        return (1..<10).map{TimelineModel(photo: "post-\($0)", user: UserModel.getUsers().randomElement()!)}
    }
}

struct CommentModel : Identifiable{
    let id = UUID()
    let comment : String
    
    static func getComments() -> [Self]{
        return [
            .init(comment: "Excuse me, folks. Everyone needs to double-tap on this picture ASAP. It’s the most beautiful thing you will ever see."),
            .init(comment: "Live for the moments you cannot put in words."),
            .init(comment: "So you have been this cool since day one?"),
            .init(comment: "This picture needs to illustrate the word fun in the dictionary."),
            .init(comment: "This is a perfect example of a quality portrait of a quality human being.")
        ]
    }
}
