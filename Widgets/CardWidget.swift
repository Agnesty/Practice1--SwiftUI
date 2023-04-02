import SwiftUI

struct CardWidget: View {
    var item: Item = items[3]
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            Image("Gb1")
                .resizable()
//                .aspectRatio(contentMode: .fit)
                .frame(height: 128)
                .frame(width: .infinity)
                .cornerRadius(15)
            Text(item.title)
                .font(.title)
                .fontWeight(.bold)
            Text(item.text)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .opacity(0.7)
            Text("20 sections - 3 hours")
                .opacity(0.7)
        }
        .foregroundColor(.white)
        .padding(16)
        .frame(width: 272, height: 329)
        .background(item.gradient)
        .cornerRadius(30)
    }
}

struct CardWidget_Previews: PreviewProvider {
    static var previews: some View {
        CardWidget()
    }
}
