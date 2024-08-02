import Foundation

struct OfferModel : Identifiable {
    var id : String = UUID().uuidString
    let pic : String
    let name : String
    let cost : String
    let district : String
    let studioCost : String
    let oneFlatCost : String
    let twoFlatCost : String
    
    static func getMockData() -> [OfferModel] {
        [
            OfferModel(
                pic: "city0",
                name: "Матрёшкин двор",
                cost: "4 080 000",
                district: "Новосибирск, улица Петухова, 99",
                studioCost: "4.1",
                oneFlatCost: "4.5",
                twoFlatCost: "5.4"
            ),
            OfferModel(
                pic: "city1",
                name: "LUNA (ЛУНА)",
                cost: "5 300 000",
                district: "Новосибирск, Центральный округ, Заельцовский",
                studioCost: "5.3",
                oneFlatCost: "6.1",
                twoFlatCost: "5.7"
            ),
        ]
    }
}
