set oaDesign [db::getAttr editDesign -of [de::getActiveContext]]
set tr [de::startTransaction "Refresh Instance" -design $oaDesign]
set instsCollection [db::getInsts -of $oaDesign]
set nameList {}
db::foreach inst2 $instsCollection {
      set nameList1 [db::getAttr name -of $inst2]
      lappend nameList $nameList1
}
      set index 0
      while {$index >= 0} {
        set index [lsearch $nameList PIN*]
        set nameList [lreplace $nameList $index $index]
      }
      foreach inst3 $nameList {
      set inst1 [db::getInsts $inst3 -of $oaDesign]
      set name1 [db::getAttr inst1.name]
      set orientation1 [db::getAttr inst1.orientation]
      set origin1 [db::getAttr inst1.origin]
      set libName1 [db::getAttr inst1.libName]
      set cellName1 [db::getAttr inst1.cellName]
      set viewName1 [db::getAttr inst1.viewName]
      set length1 [db::getAttr inst1.l]
      set width1 [db::getAttr inst1.w]
      set widthFinger1 [db::getAttr inst1.wf]
      set gateFinger1 [db::getAttr inst1.nf]
      set multiplier1 [db::getAttr inst1.m]
      se::delete $inst1
      se::createInst $name1 -design $oaDesign -orient $orientation1 -origin $origin1 -libName $libName1 -cellName $cellName1 -viewName $viewName1 -params "l $length1 wf $widthFinger1 nf $gateFinger1 m $multiplier1"
}
de::endTransaction $tr