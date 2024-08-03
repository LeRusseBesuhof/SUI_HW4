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
                name: "ЖК Матрёшкин двор",
                cost: "4 080 000",
                district: "Новосибирск, улица Петухова, 99",
                studioCost: "4.1",
                oneFlatCost: "4.5",
                twoFlatCost: "5.4"
            ),
            OfferModel(
                pic: "city1",
                name: "ЖК LUNA (ЛУНА)",
                cost: "5 300 000",
                district: "Новосибирск, Центральный округ, Заельцовский",
                studioCost: "5.3",
                oneFlatCost: "6.1",
                twoFlatCost: "5.7"
            ),
            OfferModel(
                pic: "city2",
                name: "ЖК GORIZONT (ГОРИЗОНТ)",
                cost: "4 590 000",
                district: "Новосибирск, Дзержинский",
                studioCost: "4.6",
                oneFlatCost: "5.3",
                twoFlatCost: "5.9"
            ),
            OfferModel(
                pic: "city3",
                name: "ЖК Жилой дом \"GRANDO\" (Грандо)",
                cost: "6 550 000",
                district: "Новосибирск, Дзержинский",
                studioCost: "6.5",
                oneFlatCost: "7.8",
                twoFlatCost: "7.8"
            ),
            OfferModel(
                pic: "city4",
                name: "ЖК Радуга Сибири",
                cost: "2 685 576",
                district: "Новосибирск, Жилой комплекс \"Радуга Сибири\"",
                studioCost: "2.7",
                oneFlatCost: "3.8",
                twoFlatCost: "4.0"
            ),
            OfferModel(
                pic: "city5",
                name: "ЖК Семейный квартал",
                cost: "3 190 700",
                district: "Новосибирск, Кировский, Южно-Чемской",
                studioCost: "3.2",
                oneFlatCost: "4.2",
                twoFlatCost: "4.0"
            ),
            OfferModel(
                pic: "city6",
                name: "ЖК Тихвинский",
                cost: "4 447 510",
                district: "Новосибирск, улица Станиславского, 16/1 к1 стр",
                studioCost: "4.4",
                oneFlatCost: "4.7",
                twoFlatCost: "6.5"
            ),
            OfferModel(
                pic: "city7",
                name: "ЖК Одоевский",
                cost: "4 447 510",
                district: "Новосибирск, Первомайский",
                studioCost: "-",
                oneFlatCost: "4.0",
                twoFlatCost: "3.9"
            ),
            OfferModel(
                pic: "city8",
                name: "ЖК на Игарской",
                cost: "3 650 000",
                district: "Новосибирск, Калининский",
                studioCost: "3.6",
                oneFlatCost: "4.0",
                twoFlatCost: "5.0"
            ),
            OfferModel(
                pic: "city9",
                name: "ЖК Сакура парк",
                cost: "6 050 000",
                district: "Новосибирск, Октябрьский",
                studioCost: "6.0",
                oneFlatCost: "7.8",
                twoFlatCost: "9.9"
            ),
        ]
    }
}
