import SwiftUI

struct CardView: View {
    private let rows = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                Button(action: { print("Заказать звонок") }, label: {
                    Text("Заказать звонок")
                })
                .frame(width: 190, height: 45)
                .background(.appBackground)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                Button(action: { print("Позвонить") }, label: {
                    Text("Позвонить")
                })
                .tint(.white)
                .frame(width: 190, height: 45)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            .zIndex(1)
            ScrollView(.vertical) {
                VStack {
                    Image(.city0)
                        .resizable()
                        .scaledToFill()
                        .frame(
                            width: UIScreen.main.bounds.width,
                            height: UIScreen.main.bounds.height / 2 - 40
                        )
                        .clipped()
                    VStack(alignment: .leading, spacing: 30) {
                        VStack(alignment: .leading, spacing: 20) {
                            VStack(spacing: 10) {
                                Text("SIMPLY CLEVER")
                                    .font(.custom("Gilroy-ExtraBold", size: 22))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("от 1 000 000 ₽")
                                    .font(.custom("Gilroy-ExtraBold", size: 22))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("13 DISTRICT")
                                    .font(.custom("Gilroy-Light", size: 16))
                                    .foregroundStyle(.appLightGray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            HStack(alignment: .top, spacing: 4) {
                                FlatCostView(
                                    text: "Студии",
                                    cost: "offer.studioCost"
                                )
                                FlatCostView(
                                    text: "1-комн.",
                                    cost: "offer.oneFlatCost"
                                )
                                FlatCostView(
                                    text: "2-комн.",
                                    cost: "offer.twoFlatCost"
                                )
                            }
                        }
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Отделка квартир")
                                .font(.custom("Gilroy-ExtraBold", size: 25))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            LazyVGrid(columns: rows) {
                                FlatPhotoView(imageName: "flat0")
                                FlatPhotoView(imageName: "flat1")
                                FlatPhotoView(imageName: "flat2")
                                FlatPhotoView(imageName: "flat3")
                            }
                        }
                    }
                    .padding(.top, 24)
                    .padding(.horizontal)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.white)
            }
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.appBackground)
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    CardView()
}

struct FlatPhotoView : View {
    let imageName : String
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(height: 110)
            .clipShape(RoundedRectangle(cornerRadius: 7))
            .clipped()
    }
}
