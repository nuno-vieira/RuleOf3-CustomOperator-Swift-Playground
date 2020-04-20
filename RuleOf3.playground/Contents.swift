infix operator -->?: TernaryPrecedence

func -->?(lhs: Double,
          rhs: @escaping @autoclosure () -> (Double, Double)
) -> Double {
    return lhs * rhs().1 / rhs().0
}

infix operator -->

func -->(lhs: Double, rhs: Double) -> (Double, Double) {
    return (lhs, rhs)
}

let x = 0.8 -->?
        0.4 --> 10
