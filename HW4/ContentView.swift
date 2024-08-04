import SwiftUI

struct ContentView: View {
    private let rows = [GridItem(.flexible())]
    private let offerData = OfferModel.getMockData()
    
    var body: some View {
        ZStack(alignment: .top) {
            HStack(content: {
                Text("\(offerData.count) предложений")
                    .font(.custom("Gilroy-Light", size: 14))
            })
            .padding(.leading)
            .padding(.top)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.appBackground)
            .zIndex(1)
            
            NavigationView {
                ScrollView(.vertical) {
                    LazyVGrid(columns: rows, spacing: 10) {
                        ForEach(offerData) { offer in
                            NavigationLink {
                                CardView(card: offer)
                            } label: {
                                OfferView(offer: offer)
                            }
                        }
                    }
                    .padding(.top, 40)
                    
                }
                .padding(.horizontal, 18)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.appBackground)
                .scrollIndicators(.hidden)
            }
        }
        .frame(maxWidth: .infinity)
        .background(.appBackground)
    }
}

#Preview {
    ContentView()
}
