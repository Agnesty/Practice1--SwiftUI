import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 16) {
                Image("Gb1")
                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                    .frame(height: 128)
                    .frame(width: .infinity)
                    .cornerRadius(15)
                Text("SWIFTUI for iOS 14")
                    .font(.title)
                    .fontWeight(.bold)
                Text("A complete guide to designing for iOS 14 with videos, examples and design files")
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .opacity(0.7)
                Text("20 sections - 3 hours")
                    .opacity(0.7)
            }
            .foregroundColor(.white)
            .padding(16)
            .background(LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color.purple, location: 0),
                    .init(color: Color.pink, location: 1)
                ]),
                startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
                endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672)
            ))
            
            VStack (alignment: .leading, spacing: 16) {
                Text("SwiftUI is hands-down the best way for designers to take a first step into code.")
                    .font(.headline)
                Text("This Course")
                    .font(.title).bold()
                Text("This course is unlike any other. We are about design and want to make sure that you get better at it in the process. It was written for designers and developers who are passionate about collaborating and building real apps for iOS and macOS.")
            }
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
