//
//  Story Brain.swift
//  Street Life
//
//  Created by Amit Tandel on 3/28/23.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "You wake up to a knock at the door.",
            choice1: "Go back to sleep", choice1Destination: 1,
            choice2: "Open the door.", choice2Destination: 2
        ),
        Story(
            title: "The cops bust in the door.",
            choice1: "Run out the back door.", choice1Destination: 3,
            choice2: "Put your hands up and cooperate.", choice2Destination: 4
        ),
        Story(
            title: "The police are at the door.",
            choice1: "Go back to sleep.", choice1Destination: 1,
            choice2: "Let them know they need a warrant to enter.", choice2Destination: 6
        ),
        Story(
            title: "You get shot while evading.",
            choice1: "Give up.", choice1Destination: 4,
            choice2: "Call an uber to the hospital.", choice2Destination: 8
        ),
        Story(
            title: "You get arrested.",
            choice1: "Call a lawyer.", choice1Destination: 5,
            choice2: "Plead Guilty", choice2Destination: 9
        ),
        Story(
            title: "Your lawyer is a public defandant and you are found guilty.",
            choice1: "Go back to sleep.", choice1Destination: 9,
            choice2: "Die in jail", choice2Destination: 9
        ),
        Story(
            title: "The cops come back with a warrant the next day.",
            choice1: "Escape out the back door.", choice1Destination: 3,
            choice2: "Go to jail.", choice2Destination: 9
        ),
        Story(
            title: "The end. You have chosen your path through the street life.",
            choice1: "Click to.", choice1Destination: 0,
            choice2: "Play again.", choice2Destination: 0
        ),
        Story(
            title: "You die in an uber on the way to the hospital.",
            choice1: "The", choice1Destination: 7,
            choice2: "End.", choice2Destination: 7
            ),
        Story(
            title: "You die in jail.",
            choice1: "The", choice1Destination: 0,
            choice2: "End.", choice2Destination: 0
            )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}
