/*
See the License.txt file for this sample’s licensing information.
*/

import Foundation
import SwiftUI

struct Info {
    let image: String
    let name: String
    let story: String
    let hobbies: [String]
    let foods: [String]
    let colors: [Color]
    let funFacts: [String]
}

let information = Info(
    image: "Placeholder",
    name: "Owais Khan",
    story: "August 2021, LA became my chaotic new home, CSUN my CS path. Freshman year was foundational but lacked spark. \n\nThen, sophomore year, Fall 2022 - Intro to Mobile Development. Initially, just another class. But SwiftUI changed everything. Code became visual, interactive. One Tuesday in October, battling a weather app layout, it clicked. Building something functional and beautiful on screen was exhilarating.\n\nCS transformed from abstract logic to a creative tool.  Suddenly, late nights coding were fueled by passion, not just obligation.  May 2025 graduation approaches. Nervousness replaced by focused excitement. CSUN, LA – they unexpectedly led me to iOS development.\n\n• ✍️🥖☕️🏋️‍♂️🚲🧗‍♀️ ",
    hobbies: ["bicycle", "ticket.fill", "book.fill"],
    foods: ["🥐", "🌮", "🍣"],
    colors: [Color.blue, Color.purple, Color.pink],
    funFacts: [
        "The femur is the longest and largest bone in the human body.",
        "The moon is 238,900 miles away.",
        "Prince’s last name was Nelson.",
        "503 new species were discovered in 2020.",
        "Ice is 9 percent less dense than liquid water.",
        "You can spell every number up to 1,000 without using the letter A.\n\n...one, two, three, four...ninety-nine...nine hundred ninety-nine 🧐",
        "A collection of hippos is called a bloat.",
        "White sand beaches are made of parrotfish poop.",
    ]
)
