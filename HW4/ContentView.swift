import SwiftUI

struct ContentView: View {
    let rows = [GridItem(.flexible())]
    let offerData = OfferModel.getMockData()
    
    var body: some View {
        ZStack(alignment: .top) {
            HStack(content: {
                Text("10 предложений")
                    .font(.custom("Gilroy-Light", size: 14))
            })
            .padding(.leading)
            .padding(.top)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.appBackground)
            .zIndex(1)
            
            ScrollView(.vertical) {
                LazyVGrid(columns: rows, spacing: 10) {
                     OfferView(offer: offerData[0])
                     OfferView(offer: offerData[1])
                }
                .padding(.top, 40)
                    
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.white)
        }
        .frame(maxWidth: .infinity)
        .background(.appBackground)
    }
}

#Preview {
    ContentView()
}
