import SwiftUI

struct InfoStackView: View {
    let offer : OfferModel
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            VStack(spacing: 10) {
                Text(offer.name)
                    .font(.custom("Gilroy-ExtraBold", size: 22))
                    .tint(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("от \(offer.cost) ₽")
                    .font(.custom("Gilroy-ExtraBold", size: 22))
                    .tint(.black)
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
    }
}
