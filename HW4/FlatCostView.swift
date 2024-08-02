import SwiftUI

struct FlatCostView: View {
    let text : String
    let cost : String
    var body: some View {
        Button { print(text) } label: {
            VStack(alignment: .leading, spacing: 8) {
                FlatCostText(
                    text: text,
                    color: .appLightGray
                )
                FlatCostText(
                    text: "от \(cost) млн ₽",
                    color: .black
                )
            }
        }
        .frame(width: 76, height: 28)
        .padding(.vertical)
        .padding(.horizontal)
        .background(.appBackground)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct FlatCostText: View {
    let text : String
    let color : Color
    var body: some View {
        Text(text)
            .font(.custom("Gilroy-Light", size: 12))
            .foregroundStyle(color)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
    }
}
