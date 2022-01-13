//
//  PersonalImage.swift
//  Assignment One
//
//  Created by Megan Worrel on 1/12/22.
//

import SwiftUI

struct PersonalImage: View {
    var body: some View {
        Image("profile_pic_square")
            .resizable()
            .frame(width: 150.0, height: 150.0)
            .clipShape(Circle())
            .overlay (
                Circle().stroke(Color.white, lineWidth: 4)
            )
            .shadow(radius: 7)
    }
}

struct PersonalImage_Previews: PreviewProvider {
    static var previews: some View {
        PersonalImage()
    }
}
