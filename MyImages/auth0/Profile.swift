//
//  Profile.swift
//  MyImages
//
//  Created by Dewashish Dubey on 09/02/24.
//

import JWTDecode

struct Profile {
  
  let id: String
  let name: String
  let email: String
  let emailVerified: String
  let picture: String
  let updatedAt: String

}


extension Profile {
  
  static var empty: Self {
    return Profile(
      id: "",
      name: "",
      email: "",
      emailVerified: "",
      picture: "",
      updatedAt: ""
    )
  }
  
    static func from(_ idToken: String) -> Self {
      guard
        let jwt = try? decode(jwt: idToken),
        let id = jwt.subject,
        let name = jwt.claim(name: "nickname").string,
        let email = jwt.claim(name: "email").string,
        let emailVerified = jwt.claim(name: "email_verified").boolean,
        let picture = jwt.claim(name: "picture").string,
        let updatedAt = jwt.claim(name: "updated_at").string
      else {
        return .empty
      }

      return Profile(
        id: id,
        name: name,
        email: email,
        emailVerified: String(describing: emailVerified),
        picture: picture,
        updatedAt: updatedAt
      )
    }
}
