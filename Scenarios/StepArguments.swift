//  Copyright © 2015 Outware Mobile. All rights reserved.

public struct StepArguments: Collection {

  public let startIndex: Int = 0
  public var endIndex: Int { return captures.endIndex }

  private let captures: [String]

  // TODO: Match `captures`'s type to that defined in 
  //       `Regex::MatchResult.captures`, which is `[String?]`.

  internal init(_ matchResult: MatchResult) {
    self.captures = matchResult.captures as! [String]
  }

  public func index(after i: Int) -> Int {
    return captures.index(after: i)
  }

  public subscript(index: Int) -> String {
    return captures[index]
  }

}

import Regex
