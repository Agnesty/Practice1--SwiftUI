import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack (spacing: 16) {
                        ForEach(items) { item in 
                            NavigationLink(
                                destination: DetailView()) { CardWidget(item: item)
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Learn SwiftUI")
                Text("Recent Course")
                    .font(.subheadline).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                LazyVGrid (columns: [GridItem(.adaptive(minimum: 160), spacing: 16)], spacing: 16) {
                    ForEach( items ) { item in 
                        NavigationLink(destination: DetailView()) {
                        SmallCard(item: item)    
                        }
                        
                        
                    }
                }
                .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
