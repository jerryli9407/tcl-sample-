# To make a Rectangle object to a Octagonal shape by chopping option.
proc makePad { rectLength } {

set oaDesign [db::getAttr editDesign -of [de::getActiveContext]]
set points [list [list 0.0 0.0] [list $rectLength $rectLength]]
set rect [le::createRectangle $points -design $oaDesign -lpp {IA drawing}]
set x [expr $rectLength / (2 + sqrt(2))]
le::cutCorner $rect -cutLength $x -cutSides 1

}
 