



/*
 Opaque Result Types — новая синтаксическая конструкция, позволяющая задавать абстрактный интерфейс (протокол) для возвращаемых значений.
 https://www.hackingwithswift.com/articles/187/how-to-use-opaque-return-types-in-swift-5-1
 */
// Opaque Types


protocol Fighter {}
struct XWing: Fighter {}


// -> Without Opaque Type
func prepareFighter() -> Fighter {
    XWing()
}

let xWingFighter = prepareFighter()

// -> With Opaque Type
func prepareFighterByOpaqueType() -> some Fighter {
    return XWing()
}


