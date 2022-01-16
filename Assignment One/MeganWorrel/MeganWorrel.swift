//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct MeganWorrel: View {
    @State private var answerShowing = false
    var body: some View {
        ScrollView {
            VStack {
                PersonalImage()
                    .padding(.vertical)
                Text("Megan Worrel")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Text("Megan is from Troy, MI and attended the University of Michigan for her undergraduate degree in computer science. She is now a Master's in computer science student at Stanford. Megan is an avid runner and loves to read, bake, and hike. This past summer she spent 5 weeks living in Hawaii while she worked remotely for Uber.")
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color.black)
                    .padding(.all)
                Text("2 Truths and a Lie:")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                    .padding([.top, .leading, .trailing])
                List {
                    Text("1. I have run a marathon.")
                        .font(.body)
                        .foregroundColor(Color.black)
                    Text("2. I have seen the Mona Lisa.")
                        .font(.body)
                        .foregroundColor(Color.black)
                    Text("3. I am fluent in Mandarin Chinese.")
                        .font(.body)
                        .foregroundColor(Color.black)
                        .frame(width: nil)
                }
                .padding(.all)
                .frame(width: 400, height: 175, alignment: .center)
                Button(
                    action: {
                        answerShowing = true
                    },
                    label: { Text("Click for the Answer!") }
                ).alert(isPresented: $answerShowing, content: {
                    Alert(title: Text("Answer"), message: Text("3 is the lie! I know some Mandarin, but I am NOT fluent."), dismissButton: .default(Text("OK")))
                })
                .padding(.all)
                .background(Color(red: 175/255, green: 95/255, blue: 145/255))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
        }
    }
}
