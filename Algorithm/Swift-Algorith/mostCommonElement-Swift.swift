func mostCommonElement(array: [String])-> [String]{

    var topColor : [String] = []
    var colorDictionary = [String : Int ]()

    for color in array {

        if let count = colorDictionary[color]
        {
            colorDictionary[color ] = count + 1
        } else {
            colorDictionary[color] = 1
        }

    }

    let highestColor = colorDictionary.values.max()

    for (color, count ) in colorDictionary{

        if  colorDictionary[color] == highestColor {
            topColor.append(color)
        }
    }



    return topColor
}

mostCommonElement(array: colorArray)
