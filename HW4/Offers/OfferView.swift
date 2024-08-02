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
            VStack(alignment: .leading) {
                VStack(spacing: 10) {
                    Text(offer.name)
                        .font(.custom("Gilroy-ExtraBold", size: 22))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("от \(offer.cost) ₽")
                        .font(.custom("Gilroy-ExtraBold", size: 22))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(offer.district)
                        .font(.custom("Gilroy-Light", size: 16))
                        .foregroundStyle(.appLightGray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                HStack(alignment: .top, spacing: 4) {
                    FlatCostView(
                        text: "Студии",
                        cost: offer.studioCost
                    )
                    FlatCostView(
                        text: "1-комн.",
                        cost: offer.oneFlatCost
                    )
                    FlatCostView(
                        text: "2-комн.",
                        cost: offer.twoFlatCost
                    )
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 26)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}

//#Preview {
//    OfferView()
//}
