class Rectangle(width: Int, height: Int){
    var width: Int = width;
    var height: Int = height;

    fun calculatePerimeter(height :Int, width :Int) :Int{
        return width * 2 + height * 2
    }

    fun calculateArea(height :Int, width: Int) :Int{
        return width * height
    }
}


class Triangle(side1: Int, side2: Int, side3: Int){

    var side1: Int = side1;
    var side3: Int = side3;
    var side2: Int = side2;
    
    fun checkTriangle(side1: Double?, side2: Double?, side3: Double?) :String {
        if (side1 == null || side2 == null || side3 == null ) {
            return "Invalid"
        }
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral"
            side1 == side2 || side2 == side3 || side1 == side3 -> "Isosceles"
            else -> "Scalene"
        }
    
    }
}



class ShoppingCart {
    private val items: MutableMap<String, Double> = mutableMapOf()

    fun add(itemName: String, price: Double) {
        items[itemName] = price
    }

    fun remove(itemName: String) {
        items.remove(itemName)
    }

    fun calculatePrice(): Double {
        return items.values.sum()
    }
}