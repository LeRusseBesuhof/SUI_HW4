import SwiftUI

struct OfferView: View {
    let offer : OfferModel
    var body: some View {
        VStack(spacing: 20) {
            ZStack(alignment: .top) {
                Button { print("save") } label: {
                    Image(systemName: "bookmark")
                }
                .tint(.blue)
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                .padding(.trailing, 10)
                .padding(.top, 10)
                .zIndex(1)
                
                Image(offer.pic)
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity, height: 185)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .clipped()
            }
            InfoStackView(offer: offer)
            .padding(.horizontal, 20)
            .padding(.bottom, 26)
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

//#Preview {
//    OfferView()
//}
