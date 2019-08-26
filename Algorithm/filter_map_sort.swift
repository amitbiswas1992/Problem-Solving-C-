import UIKit


// The following is a list of all the winners of the men's and women's Boston Marathon.
// You are to calculate the values for the questions shown at the bottom.

import Foundation

enum Gender { case female, male }

struct Winner {
    let year:UInt
    let name:String
    let country:String
    let time:UInt
    let gender:Gender
}


let winners = [
    Winner(year:1966, name:"Gibb, Roberta", country:"USA", time:12100, gender:.female),
    Winner(year:1967, name:"Gibb, Roberta", country:"USA", time:12437, gender:.female),
    Winner(year:1968, name:"Gibb, Roberta", country:"USA", time:12600, gender:.female),
    Winner(year:1969, name:"Berman, Sara Mae", country:"USA", time:12166, gender:.female),
    Winner(year:1970, name:"Berman, Sara Mae", country:"USA", time:11107, gender:.female),
    Winner(year:1971, name:"Berman, Sara Mae", country:"USA", time:11310, gender:.female),
    Winner(year:1972, name:"Kuscsik, Nina", country:"USA", time:11426, gender:.female),
    Winner(year:1973, name:"Hansen, Jacqueline", country:"USA", time:11159, gender:.female),
    Winner(year:1974, name:"Gorman, Miki", country:"USA", time:10031, gender:.female),
    Winner(year:1975, name:"Winter, Liane", country:"FRG", time:9744, gender:.female),
    Winner(year:1976, name:"Merritt, Kim", country:"USA", time:10030, gender:.female),
    Winner(year:1977, name:"Gorman, Miki", country:"USA", time:10113, gender:.female),
    Winner(year:1978, name:"Barron, Gayle S.", country:"USA", time:9892, gender:.female),
    Winner(year:1979, name:"Benoit, Joan", country:"USA", time:9315, gender:.female),
    Winner(year:1980, name:"Gareau, Jacqueline", country:"CAN", time:9268, gender:.female),
    Winner(year:1981, name:"Roe, Allison", country:"NZL", time:8806, gender:.female),
    Winner(year:1982, name:"Teske, Charlotte", country:"FRG", time:8973, gender:.female),
    Winner(year:1983, name:"Benoit, Joan", country:"USA", time:8563, gender:.female),
    Winner(year:1984, name:"Moller, Lorraine", country:"NZL", time:8968, gender:.female),
    Winner(year:1985, name:"Weidenbach, Lisa Larsen", country:"USA", time:9246, gender:.female),
    Winner(year:1986, name:"Kristiansen, Ingrid", country:"NOR", time:8695, gender:.female),
    Winner(year:1987, name:"Mota, Rosa", country:"POR", time:8721, gender:.female),
    Winner(year:1988, name:"Mota, Rosa", country:"POR", time:8670, gender:.female),
    Winner(year:1989, name:"Kristiansen, Ingrid", country:"NOR", time:8673, gender:.female),
    Winner(year:1990, name:"Mota, Rosa", country:"POR", time:8724, gender:.female),
    Winner(year:1991, name:"Panfil, Wanda", country:"POL", time:8658, gender:.female),
    Winner(year:1992, name:"Markova, Olga", country:"RUS", time:8623, gender:.female),
    Winner(year:1993, name:"Markova, Olga", country:"RUS", time:8727, gender:.female),
    Winner(year:1994, name:"Pippig, Uta", country:"GER", time:8505, gender:.female),
    Winner(year:1995, name:"Pippig, Uta", country:"GER", time:8711, gender:.female),
    Winner(year:1996, name:"Pippig, Uta", country:"GER", time:8832, gender:.female),
    Winner(year:1997, name:"Roba, Fatuma", country:"ETH", time:8783, gender:.female),
    Winner(year:1998, name:"Roba, Fatuma", country:"ETH", time:8601, gender:.female),
    Winner(year:1999, name:"Roba, Fatuma", country:"ETH", time:8605, gender:.female),
    Winner(year:2000, name:"Ndereba, Catherine", country:"KEN", time:8771, gender:.female),
    Winner(year:2001, name:"Ndereba, Catherine", country:"KEN", time:8633, gender:.female),
    Winner(year:2002, name:"Okayo, Margaret", country:"KEN", time:8443, gender:.female),
    Winner(year:2003, name:"Zakharova, Svetlana", country:"RUS", time:8719, gender:.female),
    Winner(year:2004, name:"Ndereba, Catherine", country:"KEN", time:8667, gender:.female),
    Winner(year:2005, name:"Ndereba, Catherine", country:"KEN", time:8712, gender:.female),
    Winner(year:2006, name:"Jeptoo, Rita", country:"KEN", time:8618, gender:.female),
    Winner(year:2007, name:"Grigoryeva, Lidiya", country:"RUS", time:8958, gender:.female),
    Winner(year:2008, name:"Tune, Dire", country:"ETH", time:8725, gender:.female),
    Winner(year:2009, name:"Kosgei, Salina", country:"KEN", time:9136, gender:.female),
    Winner(year:2010, name:"Erkesso, Teyba", country:"ETH", time:8771, gender:.female),
    Winner(year:2011, name:"Kilel, Caroline", country:"KEN", time:8556, gender:.female),
    Winner(year:2012, name:"Cherop, Sharon", country:"KEN", time:9110, gender:.female),
    Winner(year:2013, name:"Jeptoo, Rita", country:"KEN", time:8785, gender:.female),
    Winner(year:2014, name:"Deba, Bizunesh", country:"ETH", time:8399, gender:.female),
    Winner(year:2014, name:"Jeptoo, Rita", country:"KEN", time:8337, gender:.female),
    Winner(year:2015, name:"Rotich, Caroline", country:"KEN", time:8695, gender:.female),
    Winner(year:2016, name:"Baysa, Atsede", country:"ETH", time:8959, gender:.female),
    Winner(year:2017, name:"Kiplagat, Edna", country:"KEN", time:8512, gender:.female),
    Winner(year:1897, name:"McDermott, John J.", country:"USA", time:10510, gender:.male),
    Winner(year:1898, name:"MacDonald, Ronald J.", country:"CAN", time:9720, gender:.male),
    Winner(year:1899, name:"Brignolia, Lawrence", country:"USA", time:10478, gender:.male),
    Winner(year:1900, name:"Caffery, John", country:"CAN", time:9584, gender:.male),
    Winner(year:1901, name:"Caffery, John", country:"CAN", time:8963, gender:.male),
    Winner(year:1902, name:"Mellor, Sammy", country:"USA", time:9792, gender:.male),
    Winner(year:1903, name:"Lorden, John", country:"USA", time:9689, gender:.male),
    Winner(year:1904, name:"Spring, Michael", country:"USA", time:9484, gender:.male),
    Winner(year:1905, name:"Lorz, Frederick", country:"USA", time:9505, gender:.male),
    Winner(year:1906, name:"Ford, Tim", country:"USA", time:9945, gender:.male),
    Winner(year:1907, name:"Longboat, Thomas", country:"CAN", time:8664, gender:.male),
    Winner(year:1908, name:"Morrissey, Thomas", country:"USA", time:8743, gender:.male),
    Winner(year:1909, name:"Renaud, Henri", country:"USA", time:10416, gender:.male),
    Winner(year:1910, name:"Cameron, Fred", country:"CAN", time:8932, gender:.male),
    Winner(year:1911, name:"DeMar, Clarence", country:"USA", time:8499, gender:.male),
    Winner(year:1912, name:"Ryan, Michael", country:"USA", time:8478, gender:.male),
    Winner(year:1913, name:"Carlson, Fritz", country:"USA", time:8714, gender:.male),
    Winner(year:1914, name:"Duffy, James", country:"CAN", time:8714, gender:.male),
    Winner(year:1915, name:"Fabre, Édouard", country:"CAN", time:9101, gender:.male),
    Winner(year:1916, name:"Roth, Arthur", country:"USA", time:8836, gender:.male),
    Winner(year:1917, name:"Bill Kennedy", country:"USA", time:8917, gender:.male),
    Winner(year:1919, name:"Linder, Carl", country:"USA", time:8953, gender:.male),
    Winner(year:1920, name:"Trivoulides, Peter", country:"USA", time:8971, gender:.male),
    Winner(year:1921, name:"Zuna, Frank", country:"USA", time:8337, gender:.male),
    Winner(year:1922, name:"DeMar, Clarence", country:"USA", time:8290, gender:.male),
    Winner(year:1923, name:"DeMar, Clarence", country:"USA", time:8627, gender:.male),
    Winner(year:1924, name:"DeMar, Clarence", country:"USA", time:8980, gender:.male),
    Winner(year:1925, name:"Mellor, Charles", country:"USA", time:9180, gender:.male),
    Winner(year:1926, name:"Miles, Johnny", country:"CAN", time:8740, gender:.male),
    Winner(year:1927, name:"DeMar, Clarence", country:"USA", time:9622, gender:.male),
    Winner(year:1928, name:"DeMar, Clarence", country:"USA", time:9427, gender:.male),
    Winner(year:1929, name:"Miles, Johnny", country:"CAN", time:9188, gender:.male),
    Winner(year:1930, name:"DeMar, Clarence", country:"USA", time:9288, gender:.male),
    Winner(year:1931, name:"Henigan, James", country:"USA", time:10005, gender:.male),
    Winner(year:1932, name:"DeBruyn, Paul", country:"GER", time:9216, gender:.male),
    Winner(year:1933, name:"Pawson, Leslie S.", country:"USA", time:9061, gender:.male),
    Winner(year:1934, name:"Komonen, Dave", country:"CAN", time:9173, gender:.male),
    Winner(year:1935, name:"Kelley, John A.", country:"USA", time:9127, gender:.male),
    Winner(year:1936, name:"Brown, Ellison", country:"USA", time:9220, gender:.male),
    Winner(year:1937, name:"Young, Walter", country:"CAN", time:9200, gender:.male),
    Winner(year:1938, name:"Pawson, Leslie S.", country:"USA", time:9334, gender:.male),
    Winner(year:1939, name:"Brown, Ellison", country:"USA", time:8931, gender:.male),
    Winner(year:1940, name:"Côté, Gérard", country:"CAN", time:8908, gender:.male),
    Winner(year:1941, name:"Pawson, Leslie S.", country:"USA", time:9038, gender:.male),
    Winner(year:1942, name:"Smith, Joe", country:"USA", time:8811, gender:.male),
    Winner(year:1943, name:"Côté, Gérard", country:"CAN", time:8905, gender:.male),
    Winner(year:1944, name:"Côté, Gérard", country:"CAN", time:9110, gender:.male),
    Winner(year:1945, name:"Kelley, John A.", country:"USA", time:9040, gender:.male),
    Winner(year:1946, name:"Kyriakides, Stylianos", country:"GRE", time:8967, gender:.male),
    Winner(year:1947, name:"Suh Yun-bok", country:"KOR", time:8739, gender:.male),
    Winner(year:1948, name:"Côté, Gérard", country:"CAN", time:9062, gender:.male),
    Winner(year:1949, name:"Leandersson, Karl", country:"SWE", time:9110, gender:.male),
    Winner(year:1950, name:"Ham Kee-Yong", country:"KOR", time:9159, gender:.male),
    Winner(year:1951, name:"Tanaka, Shigeki", country:"JPN", time:8865, gender:.male),
    Winner(year:1952, name:"Florea, Doroteo", country:"GUA", time:9113, gender:.male),
    Winner(year:1953, name:"Yamada, Keizo", country:"JPN", time:8331, gender:.male),
    Winner(year:1954, name:"Karvonen, Veikko", country:"FIN", time:8439, gender:.male),
    Winner(year:1955, name:"Hamamura, Hideo", country:"JPN", time:8302, gender:.male),
    Winner(year:1956, name:"Viskari, Antti", country:"FIN", time:8054, gender:.male),
    Winner(year:1957, name:"Kelley, John J.", country:"USA", time:8405, gender:.male),
    Winner(year:1958, name:"Mihalic, Franjo", country:"YUG", time:8754, gender:.male),
    Winner(year:1959, name:"Oksanen, Eino", country:"FIN", time:8562, gender:.male),
    Winner(year:1960, name:"Kotila, Paavo", country:"FIN", time:8454, gender:.male),
    Winner(year:1961, name:"Oksanen, Eino", country:"FIN", time:8619, gender:.male),
    Winner(year:1962, name:"Oksanen, Eino", country:"FIN", time:8628, gender:.male),
    Winner(year:1963, name:"Vandendriessche, Aurèle", country:"BEL", time:8338, gender:.male),
    Winner(year:1964, name:"Vandendriessche, Aurèle", country:"BEL", time:8399, gender:.male),
    Winner(year:1965, name:"Shigematsu, Morio", country:"JPN", time:8193, gender:.male),
    Winner(year:1966, name:"Kimihara, Kenji", country:"JPN", time:8231, gender:.male),
    Winner(year:1967, name:"McKenzie, Dave", country:"NZL", time:8145, gender:.male),
    Winner(year:1968, name:"Burfoot, Amby", country:"USA", time:8537, gender:.male),
    Winner(year:1969, name:"Unetani, Yoshiaki", country:"JPN", time:8029, gender:.male),
    Winner(year:1970, name:"Hill, Ron", country:"GBR", time:7830, gender:.male),
    Winner(year:1971, name:"Mejia, Alvaro", country:"COL", time:8325, gender:.male),
    Winner(year:1972, name:"Suomalainen, Olavi", country:"FIN", time:8139, gender:.male),
    Winner(year:1973, name:"Anderson, Jon", country:"USA", time:8163, gender:.male),
    Winner(year:1974, name:"Cusack, Neil", country:"IRL", time:8019, gender:.male),
    Winner(year:1975, name:"Rodgers, Bill", country:"USA", time:7795, gender:.male),
    Winner(year:1976, name:"Fultz, Jack", country:"USA", time:8419, gender:.male),
    Winner(year:1977, name:"Drayton, Jerome", country:"CAN", time:8086, gender:.male),
    Winner(year:1978, name:"Rodgers, Bill", country:"USA", time:7813, gender:.male),
    Winner(year:1979, name:"Rodgers, Bill", country:"USA", time:7767, gender:.male),
    Winner(year:1980, name:"Rodgers, Bill", country:"USA", time:7931, gender:.male),
    Winner(year:1981, name:"Seko, Toshihiko", country:"JPN", time:7766, gender:.male),
    Winner(year:1982, name:"Salazar, Alberto", country:"USA", time:7732, gender:.male),
    Winner(year:1983, name:"Meyer, Greg", country:"USA", time:7740, gender:.male),
    Winner(year:1984, name:"Smith, Geoff", country:"GBR", time:7834, gender:.male),
    Winner(year:1985, name:"Smith, Geoff", country:"GBR", time:8045, gender:.male),
    Winner(year:1986, name:"de Castella, Robert", country:"AUS", time:7671, gender:.male),
    Winner(year:1987, name:"Seko, Toshihiko", country:"JPN", time:7910, gender:.male),
    Winner(year:1988, name:"Hussein, Ibrahim", country:"KEN", time:7723, gender:.male),
    Winner(year:1989, name:"Mekonnen, Abebe", country:"ETH", time:7746, gender:.male),
    Winner(year:1990, name:"Bordin, Gelindo", country:"ITA", time:7699, gender:.male),
    Winner(year:1991, name:"Hussein, Ibrahim", country:"KEN", time:7866, gender:.male),
    Winner(year:1992, name:"Hussein, Ibrahim", country:"KEN", time:7694, gender:.male),
    Winner(year:1993, name:"Ndeti, Cosmas", country:"KEN", time:7773, gender:.male),
    Winner(year:1994, name:"Ndeti, Cosmas", country:"KEN", time:7635, gender:.male),
    Winner(year:1995, name:"Ndeti, Cosmas", country:"KEN", time:7762, gender:.male),
    Winner(year:1996, name:"Tanui, Moses", country:"KEN", time:7755, gender:.male),
    Winner(year:1997, name:"Aguta, Lameck", country:"KEN", time:7834, gender:.male),
    Winner(year:1998, name:"Tanui, Moses", country:"KEN", time:7654, gender:.male),
    Winner(year:1999, name:"Chebet, Joseph", country:"KEN", time:7792, gender:.male),
    Winner(year:2000, name:"Lagat, Elijah", country:"KEN", time:7787, gender:.male),
    Winner(year:2001, name:"Lee Bong-Ju", country:"KOR", time:7783, gender:.male),
    Winner(year:2002, name:"Rop, Rodgers", country:"KEN", time:7742, gender:.male),
    Winner(year:2003, name:"Cheruiyot, Robert Kipkoech", country:"KEN", time:7811, gender:.male),
    Winner(year:2004, name:"Cherigat, Timothy", country:"KEN", time:7837, gender:.male),
    Winner(year:2005, name:"Negussie, Hailu", country:"ETH", time:7904, gender:.male),
    Winner(year:2006, name:"Cheruiyot, Robert Kipkoech", country:"KEN", time:7634, gender:.male),
    Winner(year:2007, name:"Cheruiyot, Robert Kipkoech", country:"KEN", time:8053, gender:.male),
    Winner(year:2008, name:"Cheruiyot, Robert Kipkoech", country:"KEN", time:7665, gender:.male),
    Winner(year:2009, name:"Merga, Deriba", country:"ETH", time:7722, gender:.male),
    Winner(year:2010, name:"Cheruiyot, Robert Kiprono", country:"KEN", time:7552, gender:.male),
    Winner(year:2011, name:"Mutai, Geoffrey", country:"KEN", time:7382, gender:.male),
    Winner(year:2012, name:"Korir, Wesley", country:"KEN", time:7960, gender:.male),
    Winner(year:2013, name:"Desisa Benti, Lelisa", country:"ETH", time:7822, gender:.male),
    Winner(year:2014, name:"Meb, Keflezighi", country:"USA", time:7717, gender:.male),
    Winner(year:2015, name:"Desisa Benti, Lelisa", country:"ETH", time:7757, gender:.male),
    Winner(year:2016, name:"Lemi, Berhanu Hayle", country:"ETH", time:7965, gender:.male),
    Winner(year:2017, name:"Geoffrey Kirui", country:"KEN", time:7777, gender:.male)
]



// 1. most recent year that Canada (CAN) won the Boston Marathon
//print(winners.filter({ $0.country == "CAN" })
//    .sorted(by: { $0.year > $1.year })
 //   .first!)


// 2. fastest women's time in the 1980s
//print(winners.filter({$0.gender == .female && $0.year >= 1980 && $0.year < 1990 })
//    .sorted(by: {$0.time < $1.time })
//    .first!)


// 3. after the United States, the country with the most winning runners
var usacount = winners.filter({$0.country == "USA"}).count
var othercount = 0, othercountry = ""
for w in winners{
    var temp = winners.filter({$0.country == w.country}).count
    if temp < usacount && temp > othercount{
        othercount = temp
        othercountry = w.country
    }

}
print (othercount)
print (othercountry)

// 4. first year that the fastest women's time beat the slowest men's winning time of all time
