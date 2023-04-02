import SwiftUI

struct ListView: View {
    @State var show = false
    var body: some View {
        NavigationView {
            //Make a modal sheet
            List {
                ForEach(0..<5) {item in 
                    ListItem()
                        .sheet(isPresented: $show, content: {
                            DetailView()
                        })
                        .onTapGesture {
                            show.toggle()
                        }
                }
            }
            .navigationTitle("Course")
            //Make a modal sheet with full screen but you need to add back button in the DetailView()
//            List {
//                ForEach(0..<5) {item in 
//                    ListItem()
//                        .fullScreenCover(isPresented: $show, content: {
//                            DetailView()
//                        })
//                        .onTapGesture {
//                            show.toggle()
//                        }
//                }
//            }
//            .navigationTitle("Courses")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
