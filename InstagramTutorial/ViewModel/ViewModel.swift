//
//  ViewModel.swift
//  InstagramTutorial
//
//  Created by Victor Roldan on 13/08/22.
//

import Foundation
import SwiftUI

class ViewModel : ObservableObject{
    @Published var timelineList = [TimelineModel]()
    @Published var storyList = [StoryModel]()
    
    init(){
        self.timelineList = TimelineModel.getPosts()
        self.storyList = StoryModel.getStories()
    }
    
}
