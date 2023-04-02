import SwiftUI

struct SmallCard: View {
    var item: Item = items[3]
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            Image("Gb1")
                .resizable()
            //                .aspectRatio(contentMode: .fit)
                .frame(height: 99)
                .frame(width: .infinity)
                .cornerRadius(15)
            Text(item.title)
                .font(.headline)
                .fontWeight(.bold)
            Text("20 sections - 3 hours")
                .opacity(0.7)
        }
        .foregroundColor(.white)
        .padding(16)
        .frame(height: 222)
        .background(item.gradient)
        .cornerRadius(30)
    }
}

struct SmallCard_Previews: PreviewProvider {
    static var previews: some View {
        SmallCard()
    }
}
