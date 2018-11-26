<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.2.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Aircopter" urn="urn:adsk.eagle:library:7112503">
<description>Imported from Altium Designer&amp;reg; library: Aircopter.IntLib</description>
<packages>
<package name="QFN32_5X5MM" urn="urn:adsk.eagle:footprint:7112512/1" library_version="1">
<smd name="32" x="-1.749996875" y="2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="31" x="-1.249996875" y="2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="30" x="-0.75" y="2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="29" x="-0.25" y="2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="28" x="0.25" y="2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="27" x="0.75" y="2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="26" x="1.249996875" y="2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="25" x="1.749996875" y="2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="24" x="2.34999375" y="1.749996875" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="23" x="2.34999375" y="1.249996875" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="22" x="2.34999375" y="0.75" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="21" x="2.34999375" y="0.25" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="20" x="2.34999375" y="-0.25" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="19" x="2.34999375" y="-0.75" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="18" x="2.34999375" y="-1.249996875" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="17" x="2.34999375" y="-1.749996875" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="16" x="1.749996875" y="-2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="15" x="1.249996875" y="-2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="14" x="0.75" y="-2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="13" x="0.25" y="-2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="12" x="-0.25" y="-2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="11" x="-0.75" y="-2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="10" x="-1.249996875" y="-2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="9" x="-1.749996875" y="-2.34999375" dx="0.3" dy="0.6" layer="1"/>
<smd name="8" x="-2.34999375" y="-1.749996875" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="7" x="-2.34999375" y="-1.249996875" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="6" x="-2.34999375" y="-0.75" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="5" x="-2.34999375" y="-0.25" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="4" x="-2.34999375" y="0.25" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="3" x="-2.34999375" y="0.75" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="2" x="-2.34999375" y="1.241996875" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="1" x="-2.34999375" y="1.749996875" dx="0.3" dy="0.6" layer="1" rot="R90"/>
<smd name="EPAD" x="0" y="0" dx="3.45" dy="3.45" layer="1" rot="R90"/>
<wire x1="-2.413" y1="-2.413" x2="-2.413" y2="-2.159" width="0.254" layer="21"/>
<wire x1="-2.413" y1="-2.413" x2="-2.159" y2="-2.413" width="0.254" layer="21"/>
<wire x1="2.159" y1="-2.413" x2="2.413" y2="-2.413" width="0.254" layer="21"/>
<wire x1="2.413" y1="-2.413" x2="2.413" y2="-2.159" width="0.254" layer="21"/>
<wire x1="2.413" y1="2.159" x2="2.413" y2="2.413" width="0.254" layer="21"/>
<wire x1="2.159" y1="2.413" x2="2.413" y2="2.413" width="0.254" layer="21"/>
<wire x1="-2.54" y1="2.159" x2="-2.159" y2="2.54" width="0.254" layer="21"/>
<text x="0" y="0" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="0" y="-1.524" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
<package name="VFLGA4" urn="urn:adsk.eagle:footprint:7112510/1" library_version="1">
<smd name="4" x="0" y="0" dx="0.35" dy="0.5" layer="1"/>
<smd name="1" x="0.04000625" y="-0.762" dx="0.43" dy="0.5" layer="1"/>
<smd name="3" x="1.199996875" y="0" dx="0.35" dy="0.5" layer="1"/>
<smd name="2" x="1.199996875" y="-0.75" dx="0.35" dy="0.5" layer="1"/>
<wire x1="-0.508" y1="0.508" x2="0" y2="0.508" width="0.254" layer="21"/>
<wire x1="-0.508" y1="-1.27" x2="-0.508" y2="0.508" width="0.254" layer="21"/>
<wire x1="-0.508" y1="-1.27" x2="1.651" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.651" y1="-1.27" x2="1.651" y2="0.508" width="0.254" layer="21"/>
<wire x1="1.143" y1="0.508" x2="1.651" y2="0.508" width="0.254" layer="21"/>
<wire x1="0" y1="0.508" x2="1.143" y2="0.508" width="0.254" layer="21"/>
<text x="0" y="0" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="0" y="-1.524" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
<package name="DSC6001CI1A-008.0000T_MODEL$20$NAME" urn="urn:adsk.eagle:footprint:7112509/1" library_version="1">
<pad name="4" x="0" y="0" drill="0.127" diameter="0.254"/>
<pad name="3" x="1.27" y="0" drill="0.127" diameter="0.254"/>
<pad name="2" x="2.54" y="0" drill="0.127" diameter="0.254"/>
<pad name="1" x="3.81" y="0" drill="0.127" diameter="0.254"/>
</package>
<package name="VSON10" urn="urn:adsk.eagle:footprint:7112511/1" library_version="1">
<smd name="EPAD" x="-0.003" y="-0.008" dx="1.65" dy="2.4" layer="1"/>
<smd name="6" x="1.4" y="-0.999996875" dx="0.6" dy="0.24" layer="1"/>
<smd name="7" x="1.4" y="-0.5" dx="0.6" dy="0.24" layer="1"/>
<smd name="8" x="1.4" y="0" dx="0.6" dy="0.24" layer="1"/>
<smd name="9" x="1.4" y="0.5" dx="0.6" dy="0.24" layer="1"/>
<smd name="10" x="1.4" y="0.999996875" dx="0.6" dy="0.24" layer="1"/>
<smd name="5" x="-1.4" y="-0.999996875" dx="0.6" dy="0.24" layer="1"/>
<smd name="4" x="-1.4" y="-0.5" dx="0.6" dy="0.24" layer="1"/>
<smd name="3" x="-1.4" y="0" dx="0.6" dy="0.24" layer="1"/>
<smd name="2" x="-1.4" y="0.5" dx="0.6" dy="0.24" layer="1"/>
<smd name="1" x="-1.4" y="0.999996875" dx="0.6" dy="0.24" layer="1" roundness="50"/>
<pad name="EPAD-1" x="0" y="-1.016" drill="0.2" diameter="0.254"/>
<pad name="EPAD-2" x="0" y="1.016" drill="0.2" diameter="0.254"/>
<pad name="EPAD-3" x="0.635" y="0" drill="0.2" diameter="0.254"/>
<pad name="EPAD-4" x="-0.635" y="0" drill="0.2" diameter="0.254"/>
<wire x1="-2.035" y1="-1.794003125" x2="-2.035" y2="1.888996875" width="0.2" layer="21"/>
<wire x1="-2.035" y1="-1.794003125" x2="2.029" y2="-1.794003125" width="0.2" layer="21"/>
<wire x1="2.029" y1="-1.794003125" x2="2.029" y2="1.888996875" width="0.2" layer="21"/>
<wire x1="-2.035" y1="1.888996875" x2="2.029" y2="1.888996875" width="0.2" layer="21"/>
<text x="0" y="0" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="0" y="-1.524" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="QFN32_5X5MM" urn="urn:adsk.eagle:package:7112519/1" type="box" library_version="1">
<packageinstances>
<packageinstance name="QFN32_5X5MM"/>
</packageinstances>
</package3d>
<package3d name="VFLGA4" urn="urn:adsk.eagle:package:7112517/1" type="box" library_version="1">
<packageinstances>
<packageinstance name="VFLGA4"/>
</packageinstances>
</package3d>
<package3d name="DSC6001CI1A-008.0000T_MODEL$20$NAME" urn="urn:adsk.eagle:package:7112516/1" type="box" library_version="1">
<packageinstances>
<packageinstance name="DSC6001CI1A-008.0000T_MODEL$20$NAME"/>
</packageinstances>
</package3d>
<package3d name="VSON10" urn="urn:adsk.eagle:package:7112518/1" type="box" library_version="1">
<packageinstances>
<packageinstance name="VSON10"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="STM32L432KCU6_A" urn="urn:adsk.eagle:symbol:7112513/1" library_version="1">
<pin name="VSS@1" x="-10.16" y="-40.64" direction="pas"/>
<pin name="VSS@2" x="-10.16" y="-45.72" direction="pas"/>
<pin name="PH3/BOOT0" x="-10.16" y="-35.56" direction="pas"/>
<pin name="PB7" x="-10.16" y="-33.02" direction="pas"/>
<pin name="PB6" x="-10.16" y="-30.48" direction="pas"/>
<pin name="PB5" x="-10.16" y="-27.94" direction="pas"/>
<pin name="PB4" x="-10.16" y="-25.4" direction="pas"/>
<pin name="PB3" x="-10.16" y="-22.86" direction="pas"/>
<pin name="PA15" x="40.64" y="0" direction="pas" rot="R180"/>
<pin name="PA14" x="40.64" y="-2.54" direction="pas" rot="R180"/>
<pin name="PA13" x="40.64" y="-5.08" direction="pas" rot="R180"/>
<pin name="PA12" x="40.64" y="-7.62" direction="pas" rot="R180"/>
<pin name="PA11" x="40.64" y="-10.16" direction="pas" rot="R180"/>
<pin name="PA10" x="40.64" y="-12.7" direction="pas" rot="R180"/>
<pin name="PA9" x="40.64" y="-15.24" direction="pas" rot="R180"/>
<pin name="PA8" x="40.64" y="-17.78" direction="pas" rot="R180"/>
<pin name="VDD@1" x="-10.16" y="2.54" direction="pas"/>
<pin name="VSS@3" x="-10.16" y="-43.18" direction="pas"/>
<pin name="PB1" x="-10.16" y="-20.32" direction="pas"/>
<pin name="PB0" x="-10.16" y="-17.78" direction="pas"/>
<pin name="PA7" x="40.64" y="-20.32" direction="pas" rot="R180"/>
<pin name="PA6" x="40.64" y="-22.86" direction="pas" rot="R180"/>
<pin name="PA5" x="40.64" y="-25.4" direction="pas" rot="R180"/>
<pin name="PA4" x="40.64" y="-27.94" direction="pas" rot="R180"/>
<pin name="PA3" x="40.64" y="-30.48" direction="pas" rot="R180"/>
<pin name="PA2" x="40.64" y="-33.02" direction="pas" rot="R180"/>
<pin name="PA1" x="40.64" y="-35.56" direction="pas" rot="R180"/>
<pin name="PA0/CK_IN" x="40.64" y="-38.1" direction="pas" rot="R180"/>
<pin name="VDDA/VREF+" x="-10.16" y="0" direction="pas"/>
<pin name="NRST" x="-10.16" y="-12.7" direction="pas"/>
<pin name="PC15/OSC32_OUT" x="-10.16" y="-7.62" direction="pas"/>
<pin name="PC14/OSC32_IN" x="-10.16" y="-5.08" direction="pas"/>
<pin name="VDD@2" x="-10.16" y="5.08" direction="pas"/>
<wire x1="-2.54" y1="-40.64" x2="-2.54" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-45.72" x2="-2.54" y2="-45.72" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-35.56" x2="-2.54" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-33.02" x2="-2.54" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-30.48" x2="-2.54" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-27.94" x2="-2.54" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-25.4" x2="-2.54" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-22.86" x2="-2.54" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="33.02" y1="0" x2="33.02" y2="0" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-2.54" x2="33.02" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-5.08" x2="33.02" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-7.62" x2="33.02" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-10.16" x2="33.02" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-12.7" x2="33.02" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-15.24" x2="33.02" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-17.78" x2="33.02" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-43.18" x2="-2.54" y2="-43.18" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-20.32" x2="-2.54" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-17.78" x2="-2.54" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-20.32" x2="33.02" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-22.86" x2="33.02" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-25.4" x2="33.02" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-27.94" x2="33.02" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-30.48" x2="33.02" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-33.02" x2="33.02" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-35.56" x2="33.02" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-38.1" x2="33.02" y2="-38.1" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-12.7" x2="-2.54" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-2.54" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-48.26" x2="33.02" y2="-48.26" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-48.26" x2="-2.54" y2="7.62" width="0.1524" layer="94"/>
<wire x1="33.02" y1="7.62" x2="33.02" y2="-48.26" width="0.1524" layer="94"/>
<wire x1="33.02" y1="7.62" x2="-2.54" y2="7.62" width="0.1524" layer="94"/>
<text x="0" y="7.62" size="1.27" layer="96">&gt;Supplier Part Number 1</text>
<text x="-1.27" y="1.27" size="1.27" layer="95">&gt;NAME</text>
<text x="-1.27" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="DSC6001CI1A-008.0000T_A" urn="urn:adsk.eagle:symbol:7112514/1" library_version="1">
<pin name="VDD" x="-17.78" y="-2.54" direction="pas"/>
<pin name="OUT" x="17.78" y="0" direction="pas" rot="R180"/>
<pin name="GND" x="-17.78" y="0" direction="pas"/>
<pin name="OE/STBY/FS" x="-17.78" y="2.54" direction="pas"/>
<wire x1="-10.16" y1="-2.54" x2="-10.16" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="10.16" y2="0" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="0" x2="-10.16" y2="0" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="5.08" x2="10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="5.08" x2="-10.16" y2="5.08" width="0.1524" layer="94"/>
<text x="-17.78" y="5.08" size="1.27" layer="96">&gt;Supplier Part Number 1</text>
<text x="-1.27" y="1.27" size="1.27" layer="95">&gt;NAME</text>
<text x="-1.27" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="TPS63001DRCR_A" urn="urn:adsk.eagle:symbol:7112515/1" library_version="1">
<pin name="GND@1" x="-17.78" y="-7.62" direction="pas"/>
<pin name="SELECT/FB" x="-17.78" y="-2.54" direction="pas"/>
<pin name="SHDN" x="-17.78" y="-5.08" direction="pas"/>
<pin name="C+" x="22.86" y="-5.08" direction="pas" rot="R180"/>
<pin name="C-" x="22.86" y="-2.54" direction="pas" rot="R180"/>
<pin name="GND@2" x="-17.78" y="-10.16" direction="pas"/>
<pin name="VIN" x="-17.78" y="7.62" direction="pas"/>
<pin name="VOUT" x="22.86" y="7.62" direction="pas" rot="R180"/>
<pin name="PGOOD" x="22.86" y="-7.62" direction="pas" rot="R180"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="-10.16" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-2.54" x2="15.24" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="7.62" width="0.1524" layer="94"/>
<wire x1="15.24" y1="7.62" x2="15.24" y2="7.62" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="15.24" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="15.24" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="10.16" width="0.1524" layer="94"/>
<wire x1="15.24" y1="10.16" x2="15.24" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="15.24" y1="10.16" x2="-10.16" y2="10.16" width="0.1524" layer="94"/>
<text x="-5.08" y="10.16" size="1.27" layer="96">&gt;Supplier Part Number 1</text>
<text x="-1.27" y="1.27" size="1.27" layer="95">&gt;NAME</text>
<text x="-1.27" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32L432KCU6" urn="urn:adsk.eagle:component:7112520/1" prefix="*" library_version="1">
<description>16/32-BITS MICROS</description>
<gates>
<gate name="A" symbol="STM32L432KCU6_A" x="0" y="0"/>
</gates>
<devices>
<device name="STM32L432KCU6_QFN32_5X5MM" package="QFN32_5X5MM">
<connects>
<connect gate="A" pin="NRST" pad="4"/>
<connect gate="A" pin="PA0/CK_IN" pad="6"/>
<connect gate="A" pin="PA1" pad="7"/>
<connect gate="A" pin="PA10" pad="20"/>
<connect gate="A" pin="PA11" pad="21"/>
<connect gate="A" pin="PA12" pad="22"/>
<connect gate="A" pin="PA13" pad="23"/>
<connect gate="A" pin="PA14" pad="24"/>
<connect gate="A" pin="PA15" pad="25"/>
<connect gate="A" pin="PA2" pad="8"/>
<connect gate="A" pin="PA3" pad="9"/>
<connect gate="A" pin="PA4" pad="10"/>
<connect gate="A" pin="PA5" pad="11"/>
<connect gate="A" pin="PA6" pad="12"/>
<connect gate="A" pin="PA7" pad="13"/>
<connect gate="A" pin="PA8" pad="18"/>
<connect gate="A" pin="PA9" pad="19"/>
<connect gate="A" pin="PB0" pad="14"/>
<connect gate="A" pin="PB1" pad="15"/>
<connect gate="A" pin="PB3" pad="26"/>
<connect gate="A" pin="PB4" pad="27"/>
<connect gate="A" pin="PB5" pad="28"/>
<connect gate="A" pin="PB6" pad="29"/>
<connect gate="A" pin="PB7" pad="30"/>
<connect gate="A" pin="PC14/OSC32_IN" pad="2"/>
<connect gate="A" pin="PC15/OSC32_OUT" pad="3"/>
<connect gate="A" pin="PH3/BOOT0" pad="31"/>
<connect gate="A" pin="VDD@1" pad="17"/>
<connect gate="A" pin="VDD@2" pad="1"/>
<connect gate="A" pin="VDDA/VREF+" pad="5"/>
<connect gate="A" pin="VSS@1" pad="EPAD"/>
<connect gate="A" pin="VSS@2" pad="32"/>
<connect gate="A" pin="VSS@3" pad="16"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:7112519/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="16/32-BITS MICROS"/>
<attribute name="LEAD_FREE" value="Lead Free"/>
<attribute name="MANUFACTURER" value="STMicroelectronics"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="STM32L432KCU6"/>
<attribute name="NUMBER_OF_PINS" value="32"/>
<attribute name="PRICING_1" value=""/>
<attribute name="STOCK_1" value="6394"/>
<attribute name="SUPPLIER_1" value="Mouser"/>
<attribute name="SUPPLIER_PART_NUMBER_1" value="511-STM32L432KCU6"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DSC6001CI1A-008.0000T" urn="urn:adsk.eagle:component:7112521/1" prefix="*" library_version="1">
<description>No description set</description>
<gates>
<gate name="A" symbol="DSC6001CI1A-008.0000T_A" x="0" y="0"/>
</gates>
<devices>
<device name="DSC6001CI1A-008.0000T_VFLGA4" package="VFLGA4">
<connects>
<connect gate="A" pin="GND" pad="2"/>
<connect gate="A" pin="OE/STBY/FS" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:7112517/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="Microchip"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="DSC6001CI1A-008.0000T"/>
<attribute name="PRICING_1" value=""/>
<attribute name="STOCK_1" value="1311"/>
<attribute name="SUPPLIER_1" value="Digi-Key"/>
<attribute name="SUPPLIER_PART_NUMBER_1" value="DSC6001CI1A-008.0000TDKR-ND"/>
</technology>
</technologies>
</device>
<device name="DSC6001CI1A-008.0000T_DSC6001CI1A-008.0000T_MODEL$20$NAME" package="DSC6001CI1A-008.0000T_MODEL$20$NAME">
<connects>
<connect gate="A" pin="GND" pad="2"/>
<connect gate="A" pin="OE/STBY/FS" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:7112516/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="Microchip"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="DSC6001CI1A-008.0000T"/>
<attribute name="PRICING_1" value=""/>
<attribute name="STOCK_1" value="1311"/>
<attribute name="SUPPLIER_1" value="Digi-Key"/>
<attribute name="SUPPLIER_PART_NUMBER_1" value="DSC6001CI1A-008.0000TDKR-ND"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TPS63001DRCR" urn="urn:adsk.eagle:component:7112522/1" prefix="*" library_version="1">
<description>IC REG BUCK BST 3.3V 1.6A 10SON</description>
<gates>
<gate name="A" symbol="TPS63001DRCR_A" x="0" y="0"/>
</gates>
<devices>
<device name="TPS63001DRCR_VSON10" package="VSON10">
<connects>
<connect gate="A" pin="C+" pad="6"/>
<connect gate="A" pin="C-" pad="5"/>
<connect gate="A" pin="GND@1" pad="EPAD"/>
<connect gate="A" pin="GND@2" pad="4"/>
<connect gate="A" pin="PGOOD" pad="1"/>
<connect gate="A" pin="SELECT/FB" pad="8"/>
<connect gate="A" pin="SHDN" pad="7"/>
<connect gate="A" pin="VIN" pad="3"/>
<connect gate="A" pin="VOUT" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:7112518/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="COMPONENTLINK1DESCRIPTION" value="http://www.ti.com/lit/ds/symlink/tps63001.pdf"/>
<attribute name="COMPONENTLINK1URL" value="http://www.ti.com/lit/ds/symlink/tps63001.pdf"/>
<attribute name="COMPONENTLINK2DESCRIPTION" value="http://www.farnell.com/datasheets/1854797.pdf"/>
<attribute name="COMPONENTLINK2URL" value="http://www.farnell.com/datasheets/1854797.pdf"/>
<attribute name="COMPONENTLINK3DESCRIPTION" value=""/>
<attribute name="COMPONENTLINK3URL" value=""/>
<attribute name="COMPONENTLINK4DESCRIPTION" value="http://focus.ti.com/lit/ds/symlink/tps63001.pdf"/>
<attribute name="COMPONENTLINK4URL" value="http://focus.ti.com/lit/ds/symlink/tps63001.pdf"/>
<attribute name="COMPONENTLINK5DESCRIPTION" value=""/>
<attribute name="COMPONENTLINK5URL" value=""/>
<attribute name="COMPONENTLINK6DESCRIPTION" value=""/>
<attribute name="COMPONENTLINK6URL" value=""/>
<attribute name="COMPONENTLINK7DESCRIPTION" value="http://www.farnell.com/datasheets/2018926.pdf"/>
<attribute name="COMPONENTLINK7URL" value="http://www.farnell.com/datasheets/2018926.pdf"/>
<attribute name="COMPONENTLINK8DESCRIPTION" value="http://datasheet.iiic.cc/texas_instruments/TPS63001DRCR.pdf"/>
<attribute name="COMPONENTLINK8URL" value="http://datasheet.iiic.cc/texas_instruments/TPS63001DRCR.pdf"/>
<attribute name="COMPONENTLINK9DESCRIPTION" value="http://www.produktinfo.conrad.com/datenblaetter/1000000-1099999/001014938-da-01-en-IC_REG_BUCK_BST_TPS63001DRCR_VSON_10_TID.pdf"/>
<attribute name="COMPONENTLINK9URL" value="http://www.produktinfo.conrad.com/datenblaetter/1000000-1099999/001014938-da-01-en-IC_REG_BUCK_BST_TPS63001DRCR_VSON_10_TID.pdf"/>
<attribute name="CONTACT_PLATING" value="Gold"/>
<attribute name="DESCRIPTION" value="IC REG BUCK BST 3.3V 1.6A 10SON"/>
<attribute name="EFFICIENCY" value="96%"/>
<attribute name="LEAD_FREE" value="Lead Free"/>
<attribute name="MANUFACTURER" value="Texas Instruments"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TPS63001DRCR"/>
<attribute name="MAX_INPUT_VOLTAGE" value="5.5V"/>
<attribute name="MAX_OPERATING_TEMPERATURE" value="85�C"/>
<attribute name="MAX_OUTPUT_CURRENT" value="1.2A"/>
<attribute name="MAX_OUTPUT_VOLTAGE" value="3.3V"/>
<attribute name="MIN_INPUT_VOLTAGE" value="1.8V"/>
<attribute name="MIN_OPERATING_TEMPERATURE" value="-40�C"/>
<attribute name="MIN_OUTPUT_VOLTAGE" value="3.3V"/>
<attribute name="NOMINAL_OUTPUT_VOLTAGE" value="3.3V"/>
<attribute name="NUMBER_OF_OUTPUTS" value="1"/>
<attribute name="NUMBER_OF_PINS" value="10"/>
<attribute name="OPERATING_SUPPLY_VOLTAGE" value="5.5V"/>
<attribute name="OUTPUT_CURRENT" value="1.2A"/>
<attribute name="OUTPUT_TYPE" value="Fixed"/>
<attribute name="OUTPUT_VOLTAGE" value="3.3V"/>
<attribute name="PACKAGE_QUANTITY" value="1"/>
<attribute name="PACKAGING" value="Tape and Reel"/>
<attribute name="PRICING_1" value=""/>
<attribute name="QUIESCENT_CURRENT" value="30uA"/>
<attribute name="RADIATION_HARDENING" value="No"/>
<attribute name="REACH_SVHC" value="No SVHC"/>
<attribute name="STOCK_1" value="260"/>
<attribute name="SUPPLIER_1" value="Digi-Key"/>
<attribute name="SUPPLIER_PART_NUMBER_1" value="296-19643-6-ND"/>
<attribute name="SWITCHING_FREQUENCY" value="1.5MHz"/>
<attribute name="SYNCHRONOUS_RECTIFIER" value="Yes"/>
<attribute name="TOPOLOGY" value="Buck-Boost"/>
<attribute name="WEIGHT" value="0.000921oz"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="*1" library="Aircopter" library_urn="urn:adsk.eagle:library:7112503" deviceset="STM32L432KCU6" device="STM32L432KCU6_QFN32_5X5MM" package3d_urn="urn:adsk.eagle:package:7112519/1"/>
<part name="*2" library="Aircopter" library_urn="urn:adsk.eagle:library:7112503" deviceset="DSC6001CI1A-008.0000T" device="DSC6001CI1A-008.0000T_VFLGA4" package3d_urn="urn:adsk.eagle:package:7112517/1"/>
<part name="*3" library="Aircopter" library_urn="urn:adsk.eagle:library:7112503" deviceset="TPS63001DRCR" device="TPS63001DRCR_VSON10" package3d_urn="urn:adsk.eagle:package:7112518/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="*1" gate="A" x="20.32" y="55.88" smashed="yes">
<attribute name="NAME" x="21.59" y="57.15" size="1.27" layer="95"/>
<attribute name="VALUE" x="19.05" y="3.81" size="1.27" layer="96"/>
</instance>
<instance part="*2" gate="A" x="104.14" y="48.26" smashed="yes">
<attribute name="NAME" x="102.87" y="49.53" size="1.27" layer="95"/>
<attribute name="VALUE" x="87.63" y="41.91" size="1.27" layer="96"/>
</instance>
<instance part="*3" gate="A" x="99.06" y="27.94" smashed="yes">
<attribute name="NAME" x="97.79" y="29.21" size="1.27" layer="95"/>
<attribute name="VALUE" x="90.17" y="11.43" size="1.27" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
