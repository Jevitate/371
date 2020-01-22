<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.3.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="EELE_465">
<packages>
<package name="MC9S08QG8">
<pad name="P$1" x="0" y="0" drill="0.6" shape="square"/>
<pad name="P$2" x="1.27" y="0" drill="0.6" shape="square"/>
<pad name="P$3" x="2.54" y="0" drill="0.6" shape="square"/>
<pad name="P$4" x="3.81" y="0" drill="0.6" shape="square"/>
<pad name="P$5" x="5.08" y="0" drill="0.6" shape="square"/>
<pad name="P$6" x="6.35" y="0" drill="0.6" shape="square"/>
<pad name="P$7" x="7.62" y="0" drill="0.6" shape="square"/>
<pad name="P$8" x="8.89" y="0" drill="0.6" shape="square"/>
<pad name="P$9" x="0" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$10" x="1.27" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$11" x="2.54" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$12" x="3.81" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$13" x="6.35" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$14" x="5.08" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$15" x="7.62" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$16" x="8.89" y="-1.27" drill="0.6" shape="square"/>
</package>
<package name="27899PAR-ND">
<pad name="P$1" x="0" y="0" drill="0.6" shape="square"/>
<pad name="P$2" x="1.27" y="0" drill="0.6" shape="square"/>
<pad name="P$3" x="2.54" y="0" drill="0.6" shape="square"/>
<pad name="P$4" x="3.81" y="0" drill="0.6" shape="square"/>
<pad name="P$5" x="5.08" y="0" drill="0.6" shape="square"/>
<pad name="P$6" x="6.35" y="0" drill="0.6" shape="square"/>
<pad name="P$7" x="7.62" y="0" drill="0.6" shape="square"/>
<pad name="P$8" x="8.89" y="0" drill="0.6" shape="square"/>
</package>
<package name="SN74HC245">
<pad name="P$1" x="-8.89" y="8.89" drill="0.6" shape="square"/>
<pad name="P$2" x="-8.89" y="6.35" drill="0.6" shape="square"/>
<pad name="P$3" x="-8.89" y="3.81" drill="0.6" shape="square"/>
<pad name="P$4" x="-8.89" y="1.27" drill="0.6" shape="square"/>
<pad name="P$5" x="-8.89" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$6" x="-8.89" y="-3.81" drill="0.6" shape="square"/>
<pad name="P$7" x="-8.89" y="-6.35" drill="0.6" shape="square"/>
<pad name="P$8" x="-8.89" y="-8.89" drill="0.6" shape="square"/>
<pad name="P$9" x="-8.89" y="-11.43" drill="0.6" shape="square"/>
<pad name="P$10" x="-8.89" y="-13.97" drill="0.6" shape="square"/>
<pad name="P$11" x="-5.08" y="-13.97" drill="0.6" shape="square"/>
<pad name="P$12" x="-5.08" y="-11.43" drill="0.6" shape="square"/>
<pad name="P$13" x="-5.08" y="-8.89" drill="0.6" shape="square"/>
<pad name="P$14" x="-5.08" y="-6.35" drill="0.6" shape="square"/>
<pad name="P$15" x="-5.08" y="-3.81" drill="0.6" shape="square"/>
<pad name="P$16" x="-5.08" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$17" x="-5.08" y="1.27" drill="0.6" shape="square"/>
<pad name="P$18" x="-5.08" y="3.81" drill="0.6" shape="square"/>
<pad name="P$19" x="-5.08" y="6.35" drill="0.6" shape="square"/>
<pad name="P$20" x="-5.08" y="8.89" drill="0.6" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="MC9S08QG8">
<pin name="RESET_N" x="0" y="0" length="middle"/>
<pin name="BKGD" x="0" y="-5.08" length="middle"/>
<pin name="VDD" x="0" y="-10.16" length="middle"/>
<pin name="VSS" x="0" y="-15.24" length="middle"/>
<pin name="PTB7/SCL" x="0" y="-20.32" length="middle"/>
<pin name="PTB6/SDA" x="0" y="-25.4" length="middle"/>
<pin name="PTB5" x="0" y="-30.48" length="middle"/>
<pin name="PTB4" x="0" y="-35.56" length="middle"/>
<pin name="PTB3" x="33.02" y="-35.56" length="middle" rot="R180"/>
<pin name="PTB2" x="33.02" y="-30.48" length="middle" rot="R180"/>
<pin name="PTB1" x="33.02" y="-25.4" length="middle" rot="R180"/>
<pin name="PTB0" x="33.02" y="-20.32" length="middle" rot="R180"/>
<pin name="PTA3/SCL" x="33.02" y="-15.24" length="middle" rot="R180"/>
<pin name="PTA2/SDA" x="33.02" y="-10.16" length="middle" rot="R180"/>
<pin name="PTA1" x="33.02" y="-5.08" length="middle" rot="R180"/>
<pin name="PTA0" x="33.02" y="0" length="middle" rot="R180"/>
<wire x1="5.08" y1="2.54" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="2.54" x2="27.94" y2="-38.1" width="0.254" layer="94"/>
<wire x1="27.94" y1="-38.1" x2="5.08" y2="-38.1" width="0.254" layer="94"/>
<wire x1="5.08" y1="-38.1" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<text x="5.08" y="5.08" size="1.778" layer="95">&gt;Name</text>
<text x="5.08" y="-43.18" size="1.778" layer="95">&gt;Value</text>
</symbol>
<symbol name="27899PAR-ND">
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<circle x="7.62" y="0" radius="2.54" width="0.254" layer="94"/>
<circle x="15.24" y="0" radius="2.54" width="0.254" layer="94"/>
<circle x="22.86" y="0" radius="2.54" width="0.254" layer="94"/>
<circle x="0" y="-7.62" radius="2.54" width="0.254" layer="94"/>
<circle x="0" y="-15.24" radius="2.54" width="0.254" layer="94"/>
<circle x="0" y="-22.86" radius="2.54" width="0.254" layer="94"/>
<circle x="7.62" y="-7.62" radius="2.54" width="0.254" layer="94"/>
<circle x="15.24" y="-15.24" radius="2.54" width="0.254" layer="94"/>
<circle x="22.86" y="-22.86" radius="2.54" width="0.254" layer="94"/>
<circle x="22.86" y="-7.62" radius="2.54" width="0.254" layer="94"/>
<circle x="15.24" y="-22.86" radius="2.54" width="0.254" layer="94"/>
<circle x="15.24" y="-7.62" radius="2.54" width="0.254" layer="94"/>
<circle x="7.62" y="-15.24" radius="2.54" width="0.254" layer="94"/>
<circle x="7.62" y="-22.86" radius="2.54" width="0.254" layer="94"/>
<circle x="22.86" y="-15.24" radius="2.54" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">1</text>
<text x="5.08" y="2.54" size="1.778" layer="95">2</text>
<text x="12.7" y="2.54" size="1.778" layer="95">3</text>
<text x="-2.54" y="-5.08" size="1.778" layer="95">4</text>
<text x="5.08" y="-5.08" size="1.778" layer="95">5</text>
<text x="12.7" y="-5.08" size="1.778" layer="95">6</text>
<text x="-2.54" y="-12.7" size="1.778" layer="95">7</text>
<text x="5.08" y="-12.7" size="1.778" layer="95">8</text>
<text x="12.7" y="-12.7" size="1.778" layer="95">9</text>
<text x="-2.54" y="-20.32" size="1.778" layer="95">*</text>
<text x="5.08" y="-20.32" size="1.778" layer="95">0</text>
<text x="12.7" y="-20.32" size="1.778" layer="95">#</text>
<text x="20.32" y="2.54" size="1.778" layer="95">A</text>
<text x="20.32" y="-5.08" size="1.778" layer="95">B</text>
<text x="20.32" y="-12.7" size="1.778" layer="95">C</text>
<text x="20.32" y="-20.32" size="1.778" layer="95">D</text>
<wire x1="-5.08" y1="5.08" x2="27.94" y2="5.08" width="0.254" layer="94"/>
<wire x1="27.94" y1="5.08" x2="27.94" y2="-27.94" width="0.254" layer="94"/>
<wire x1="27.94" y1="-27.94" x2="-5.08" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-27.94" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<pin name="P$1" x="-10.16" y="0" visible="off" length="middle"/>
<pin name="P$2" x="-10.16" y="-7.62" visible="off" length="middle"/>
<pin name="P$3" x="-10.16" y="-15.24" visible="off" length="middle"/>
<pin name="P$4" x="-10.16" y="-22.86" visible="off" length="middle"/>
<pin name="P$5" x="22.86" y="-33.02" visible="off" length="middle" rot="R90"/>
<pin name="P$6" x="15.24" y="-33.02" visible="off" length="middle" rot="R90"/>
<pin name="P$7" x="7.62" y="-33.02" visible="off" length="middle" rot="R90"/>
<pin name="P$8" x="0" y="-33.02" visible="off" length="middle" rot="R90"/>
<text x="-5.08" y="7.62" size="1.778" layer="95">&gt;Name</text>
<text x="20.32" y="7.62" size="1.778" layer="95">&gt;Value</text>
</symbol>
<symbol name="SN74HC245">
<pin name="DIR" x="-38.1" y="20.32" length="middle"/>
<pin name="A1" x="-38.1" y="15.24" length="middle"/>
<pin name="A2" x="-38.1" y="10.16" length="middle"/>
<pin name="A3" x="-38.1" y="5.08" length="middle"/>
<pin name="A4" x="-38.1" y="0" length="middle"/>
<pin name="A5" x="-38.1" y="-5.08" length="middle"/>
<pin name="A6" x="-38.1" y="-10.16" length="middle"/>
<pin name="A7" x="-38.1" y="-15.24" length="middle"/>
<pin name="A8" x="-38.1" y="-20.32" length="middle"/>
<pin name="GND" x="-38.1" y="-25.4" length="middle"/>
<pin name="B8" x="-12.7" y="-25.4" length="middle" rot="R180"/>
<pin name="B7" x="-12.7" y="-20.32" length="middle" rot="R180"/>
<pin name="B6" x="-12.7" y="-15.24" length="middle" rot="R180"/>
<pin name="B5" x="-12.7" y="-10.16" length="middle" rot="R180"/>
<pin name="B4" x="-12.7" y="-5.08" length="middle" rot="R180"/>
<pin name="B3" x="-12.7" y="0" length="middle" rot="R180"/>
<pin name="B2" x="-12.7" y="5.08" length="middle" rot="R180"/>
<pin name="B1" x="-12.7" y="10.16" length="middle" rot="R180"/>
<pin name="OE" x="-12.7" y="15.24" length="middle" rot="R180"/>
<pin name="VCC" x="-12.7" y="20.32" length="middle" rot="R180"/>
<wire x1="-33.02" y1="22.86" x2="-33.02" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-33.02" y1="-27.94" x2="-17.78" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-27.94" x2="-17.78" y2="22.86" width="0.254" layer="94"/>
<wire x1="-17.78" y1="22.86" x2="-33.02" y2="22.86" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MC9S08QG8">
<gates>
<gate name="G$1" symbol="MC9S08QG8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MC9S08QG8">
<connects>
<connect gate="G$1" pin="BKGD" pad="P$1"/>
<connect gate="G$1" pin="PTA0" pad="P$2"/>
<connect gate="G$1" pin="PTA1" pad="P$3"/>
<connect gate="G$1" pin="PTA2/SDA" pad="P$4"/>
<connect gate="G$1" pin="PTA3/SCL" pad="P$5"/>
<connect gate="G$1" pin="PTB0" pad="P$6"/>
<connect gate="G$1" pin="PTB1" pad="P$7"/>
<connect gate="G$1" pin="PTB2" pad="P$8"/>
<connect gate="G$1" pin="PTB3" pad="P$9"/>
<connect gate="G$1" pin="PTB4" pad="P$10"/>
<connect gate="G$1" pin="PTB5" pad="P$11"/>
<connect gate="G$1" pin="PTB6/SDA" pad="P$12"/>
<connect gate="G$1" pin="PTB7/SCL" pad="P$13"/>
<connect gate="G$1" pin="RESET_N" pad="P$14"/>
<connect gate="G$1" pin="VDD" pad="P$15"/>
<connect gate="G$1" pin="VSS" pad="P$16"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="27899PAR-ND">
<gates>
<gate name="G$1" symbol="27899PAR-ND" x="0" y="0"/>
</gates>
<devices>
<device name="" package="27899PAR-ND">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
<connect gate="G$1" pin="P$5" pad="P$5"/>
<connect gate="G$1" pin="P$6" pad="P$6"/>
<connect gate="G$1" pin="P$7" pad="P$7"/>
<connect gate="G$1" pin="P$8" pad="P$8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SN74HC245">
<gates>
<gate name="G$1" symbol="SN74HC245" x="15.24" y="2.54"/>
</gates>
<devices>
<device name="" package="SN74HC245">
<connects>
<connect gate="G$1" pin="A1" pad="P$2"/>
<connect gate="G$1" pin="A2" pad="P$3"/>
<connect gate="G$1" pin="A3" pad="P$4"/>
<connect gate="G$1" pin="A4" pad="P$5"/>
<connect gate="G$1" pin="A5" pad="P$6"/>
<connect gate="G$1" pin="A6" pad="P$7"/>
<connect gate="G$1" pin="A7" pad="P$8"/>
<connect gate="G$1" pin="A8" pad="P$9"/>
<connect gate="G$1" pin="B1" pad="P$11"/>
<connect gate="G$1" pin="B2" pad="P$12"/>
<connect gate="G$1" pin="B3" pad="P$13"/>
<connect gate="G$1" pin="B4" pad="P$14"/>
<connect gate="G$1" pin="B5" pad="P$15"/>
<connect gate="G$1" pin="B6" pad="P$16"/>
<connect gate="G$1" pin="B7" pad="P$17"/>
<connect gate="G$1" pin="B8" pad="P$18"/>
<connect gate="G$1" pin="DIR" pad="P$1"/>
<connect gate="G$1" pin="GND" pad="P$10"/>
<connect gate="G$1" pin="OE" pad="P$19"/>
<connect gate="G$1" pin="VCC" pad="P$20"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:527439">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
<symbol name="0" urn="urn:adsk.eagle:symbol:527455/1" library_version="18">
<description>Simulation ground symbol (spice node 0)</description>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<pin name="0" x="0" y="0" visible="off" length="point" direction="sup"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:527478/1" prefix="X_" library_version="18">
<description>Simulation ground symbol (spice node 0)</description>
<gates>
<gate name="G$1" symbol="0" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="SPICEGROUND" value=""/>
<attribute name="_EXTERNAL_" value=""/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="docu-dummy" urn="urn:adsk.eagle:library:215">
<description>Dummy symbols</description>
<packages>
</packages>
<symbols>
<symbol name="RESISTOR" urn="urn:adsk.eagle:symbol:13162/1" library_version="2">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" urn="urn:adsk.eagle:component:13171/1" prefix="R" library_version="2">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led" urn="urn:adsk.eagle:library:259">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="LZR184" urn="urn:adsk.eagle:footprint:15646/1" library_version="4">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
4 LEDs, Siemens</description>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.921" x2="-1.27" y2="4.699" width="0.1524" layer="51"/>
<wire x1="1.27" y1="2.921" x2="1.27" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.921" x2="-1.27" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="2.159" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0.381" x2="1.27" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-1.27" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-1.27" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-4.699" x2="-1.27" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-3.81" x2="0" y2="-2.921" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="-3.81" x2="0" y2="-3.302" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-4.318" x2="0.508" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-4.699" x2="0.889" y2="-3.81" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="-3.0661" x2="0" y2="-2.667" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="-2.667" x2="0.8678" y2="-3.0661" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="-4.5539" x2="0" y2="-4.953" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="-4.953" x2="0.8678" y2="-4.5539" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="-3.0661" x2="1.1429" y2="-3.81" width="0.1524" layer="51" curve="-40.60599"/>
<wire x1="0.8678" y1="-4.5539" x2="1.1431" y2="-3.81" width="0.1524" layer="51" curve="40.602281"/>
<wire x1="-1.143" y1="-3.81" x2="-0.8678" y2="-3.0661" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="-1.143" y1="-3.81" x2="-0.8677" y2="-4.5539" width="0.1524" layer="51" curve="40.60599"/>
<wire x1="1.27" y1="-4.699" x2="1.27" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="1.27" y1="-2.159" x2="1.27" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="-1.27" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="1.27" y1="5.08" x2="-1.27" y2="5.08" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.159" x2="1.27" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-1.27" x2="0" y2="-0.381" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="-1.27" x2="0" y2="-0.762" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.778" x2="0.508" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-2.159" x2="0.889" y2="-1.27" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="-0.5261" x2="0" y2="-0.127" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="-0.127" x2="0.8678" y2="-0.5261" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="-2.0139" x2="0" y2="-2.413" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="-2.413" x2="0.8678" y2="-2.0139" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="-0.5261" x2="1.1429" y2="-1.27" width="0.1524" layer="51" curve="-40.60599"/>
<wire x1="0.8678" y1="-2.0139" x2="1.1431" y2="-1.27" width="0.1524" layer="51" curve="40.602281"/>
<wire x1="-1.143" y1="-1.27" x2="-0.8678" y2="-0.5261" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="-1.143" y1="-1.27" x2="-0.8677" y2="-2.0139" width="0.1524" layer="51" curve="40.60599"/>
<wire x1="-0.889" y1="1.27" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="1.27" x2="0" y2="1.778" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="0.762" x2="0.508" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="0.381" x2="0.889" y2="1.27" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="2.0139" x2="0" y2="2.413" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="2.413" x2="0.8678" y2="2.0139" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="0.5261" x2="0" y2="0.127" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="0.127" x2="0.8678" y2="0.5261" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="2.0139" x2="1.1431" y2="1.27" width="0.1524" layer="51" curve="-40.602281"/>
<wire x1="0.8678" y1="0.5261" x2="1.1429" y2="1.27" width="0.1524" layer="51" curve="40.60599"/>
<wire x1="-1.143" y1="1.27" x2="-0.8677" y2="2.0139" width="0.1524" layer="51" curve="-40.60599"/>
<wire x1="-1.143" y1="1.27" x2="-0.8678" y2="0.5261" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="1.27" y1="0.381" x2="1.27" y2="2.159" width="0.1524" layer="51"/>
<wire x1="1.27" y1="5.08" x2="1.27" y2="4.699" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.921" x2="1.27" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="3.81" x2="0" y2="4.699" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="3.81" x2="0" y2="4.318" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="3.302" x2="0.508" y2="3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="2.921" x2="0.889" y2="3.81" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="4.5539" x2="0" y2="4.953" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="4.953" x2="0.8678" y2="4.5539" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="3.0661" x2="0" y2="2.667" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="2.667" x2="0.8678" y2="3.0661" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="4.5539" x2="1.1431" y2="3.81" width="0.1524" layer="51" curve="-40.602281"/>
<wire x1="0.8678" y1="3.0661" x2="1.1429" y2="3.81" width="0.1524" layer="51" curve="40.60599"/>
<wire x1="-1.143" y1="3.81" x2="-0.8677" y2="4.5539" width="0.1524" layer="51" curve="-40.60599"/>
<wire x1="-1.143" y1="3.81" x2="-0.8678" y2="3.0661" width="0.1524" layer="51" curve="40.604135"/>
<pad name="A1" x="-1.27" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="K1" x="1.27" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="A2" x="-1.27" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="K2" x="1.27" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="A3" x="-1.27" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="K3" x="1.27" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="A4" x="-1.27" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="K4" x="1.27" y="-3.81" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="5.2832" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="3.1242" y="-4.445" size="1.016" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-3.175" y="3.175" size="1.27" layer="21" ratio="10">1</text>
<text x="-3.302" y="0.635" size="1.27" layer="21" ratio="10">2</text>
<text x="-3.302" y="-1.905" size="1.27" layer="21" ratio="10">3</text>
<text x="-3.302" y="-4.445" size="1.27" layer="21" ratio="10">4</text>
<rectangle x1="1.27" y1="2.921" x2="1.524" y2="4.064" layer="51"/>
<rectangle x1="-1.524" y1="3.556" x2="-1.27" y2="4.064" layer="51"/>
<rectangle x1="1.27" y1="0.381" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.27" y2="1.524" layer="51"/>
<rectangle x1="1.27" y1="-2.159" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.27" y2="-1.016" layer="51"/>
<rectangle x1="1.27" y1="-4.699" x2="1.524" y2="-3.556" layer="51"/>
<rectangle x1="-1.524" y1="-4.064" x2="-1.27" y2="-3.556" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="LZR184" urn="urn:adsk.eagle:package:15790/1" type="box" library_version="4">
<description>LED BLOCK
4 LEDs, Siemens</description>
<packageinstances>
<packageinstance name="LZR184"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="LED" urn="urn:adsk.eagle:symbol:15639/2" library_version="4">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LZR184" urn="urn:adsk.eagle:component:15898/2" prefix="DZ" library_version="4">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
4 LEDs, Siemens</description>
<gates>
<gate name="-1" symbol="LED" x="0" y="0" addlevel="always"/>
<gate name="-2" symbol="LED" x="10.16" y="0" addlevel="always"/>
<gate name="-3" symbol="LED" x="20.32" y="0" addlevel="always"/>
<gate name="-4" symbol="LED" x="30.48" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="LZR184">
<connects>
<connect gate="-1" pin="A" pad="A1"/>
<connect gate="-1" pin="C" pad="K1"/>
<connect gate="-2" pin="A" pad="A2"/>
<connect gate="-2" pin="C" pad="K2"/>
<connect gate="-3" pin="A" pad="A3"/>
<connect gate="-3" pin="C" pad="K3"/>
<connect gate="-4" pin="A" pad="A4"/>
<connect gate="-4" pin="C" pad="K4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15790/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
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
<part name="U$1" library="EELE_465" deviceset="MC9S08QG8" device=""/>
<part name="U$3" library="EELE_465" deviceset="27899PAR-ND" device=""/>
<part name="U$4" library="EELE_465" deviceset="MC9S08QG8" device=""/>
<part name="U$5" library="EELE_465" deviceset="SN74HC245" device=""/>
<part name="X_1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="X_2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="X_3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="R1" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R2" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R3" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R4" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R7" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R8" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R9" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R10" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="DZ1" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LZR184" device="" package3d_urn="urn:adsk.eagle:package:15790/1"/>
<part name="DZ2" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LZR184" device="" package3d_urn="urn:adsk.eagle:package:15790/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="93.98" y="93.98" smashed="yes">
<attribute name="NAME" x="99.06" y="99.06" size="1.778" layer="95"/>
<attribute name="VALUE" x="93.98" y="50.8" size="1.778" layer="95"/>
</instance>
<instance part="U$3" gate="G$1" x="172.72" y="83.82" smashed="yes">
<attribute name="NAME" x="167.64" y="91.44" size="1.778" layer="95"/>
<attribute name="VALUE" x="193.04" y="91.44" size="1.778" layer="95"/>
</instance>
<instance part="U$4" gate="G$1" x="-7.62" y="93.98" smashed="yes">
<attribute name="NAME" x="-2.54" y="99.06" size="1.778" layer="95"/>
<attribute name="VALUE" x="-2.54" y="50.8" size="1.778" layer="95"/>
</instance>
<instance part="U$5" gate="G$1" x="33.02" y="10.16" smashed="yes"/>
<instance part="X_1" gate="G$1" x="76.2" y="78.74" smashed="yes"/>
<instance part="X_2" gate="G$1" x="-30.48" y="73.66" smashed="yes"/>
<instance part="X_3" gate="G$1" x="-12.7" y="-22.86" smashed="yes"/>
<instance part="R1" gate="G$1" x="45.72" y="20.32" smashed="yes"/>
<instance part="R2" gate="G$1" x="45.72" y="15.24" smashed="yes"/>
<instance part="R3" gate="G$1" x="45.72" y="10.16" smashed="yes"/>
<instance part="R4" gate="G$1" x="45.72" y="5.08" smashed="yes"/>
<instance part="R7" gate="G$1" x="45.72" y="17.78" smashed="yes"/>
<instance part="R8" gate="G$1" x="45.72" y="12.7" smashed="yes"/>
<instance part="R9" gate="G$1" x="45.72" y="7.62" smashed="yes"/>
<instance part="R10" gate="G$1" x="45.72" y="2.54" smashed="yes"/>
<instance part="DZ1" gate="-1" x="76.2" y="0" smashed="yes" rot="R90">
<attribute name="NAME" x="80.772" y="3.556" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="80.772" y="5.715" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="DZ1" gate="-2" x="76.2" y="10.16" smashed="yes" rot="R90">
<attribute name="NAME" x="80.772" y="13.716" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="80.772" y="15.875" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="DZ1" gate="-3" x="76.2" y="20.32" smashed="yes" rot="R90">
<attribute name="NAME" x="80.772" y="23.876" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="80.772" y="26.035" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="DZ1" gate="-4" x="76.2" y="30.48" smashed="yes" rot="R90">
<attribute name="NAME" x="80.772" y="34.036" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="80.772" y="36.195" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="DZ2" gate="-1" x="76.2" y="-40.64" smashed="yes" rot="R90">
<attribute name="NAME" x="80.772" y="-37.084" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="80.772" y="-34.925" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="DZ2" gate="-2" x="76.2" y="-30.48" smashed="yes" rot="R90">
<attribute name="NAME" x="80.772" y="-26.924" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="80.772" y="-24.765" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="DZ2" gate="-3" x="76.2" y="-20.32" smashed="yes" rot="R90">
<attribute name="NAME" x="80.772" y="-16.764" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="80.772" y="-14.605" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="DZ2" gate="-4" x="76.2" y="-10.16" smashed="yes" rot="R90">
<attribute name="NAME" x="80.772" y="-6.604" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="80.772" y="-4.445" size="1.778" layer="96" rot="R180"/>
</instance>
</instances>
<busses>
<bus name="B$1">
<segment>
<wire x1="-12.7" y1="43.18" x2="33.02" y2="43.18" width="0.762" layer="92"/>
<wire x1="-12.7" y1="43.18" x2="-22.86" y2="43.18" width="0.762" layer="92"/>
<wire x1="-22.86" y1="43.18" x2="-22.86" y2="-15.24" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="P$1"/>
<wire x1="162.56" y1="83.82" x2="142.24" y2="83.82" width="0.1524" layer="91"/>
<wire x1="142.24" y1="83.82" x2="142.24" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PTB3"/>
<wire x1="142.24" y1="58.42" x2="127" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="P$2"/>
<wire x1="162.56" y1="76.2" x2="144.78" y2="76.2" width="0.1524" layer="91"/>
<wire x1="144.78" y1="76.2" x2="144.78" y2="63.5" width="0.1524" layer="91"/>
<wire x1="144.78" y1="63.5" x2="127" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PTB2"/>
<wire x1="127" y1="63.5" x2="124.46" y2="63.5" width="0.1524" layer="91"/>
<junction x="127" y="63.5"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="165.1" y1="68.58" x2="162.56" y2="68.58" width="0.1524" layer="91"/>
<wire x1="162.56" y1="68.58" x2="147.32" y2="68.58" width="0.1524" layer="91"/>
<wire x1="147.32" y1="68.58" x2="147.32" y2="48.26" width="0.1524" layer="91"/>
<wire x1="147.32" y1="48.26" x2="86.36" y2="48.26" width="0.1524" layer="91"/>
<wire x1="86.36" y1="48.26" x2="86.36" y2="58.42" width="0.1524" layer="91"/>
<wire x1="86.36" y1="58.42" x2="93.98" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PTB4"/>
<wire x1="93.98" y1="58.42" x2="96.52" y2="58.42" width="0.1524" layer="91"/>
<junction x="93.98" y="58.42"/>
<pinref part="U$3" gate="G$1" pin="P$3"/>
<junction x="162.56" y="68.58"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="165.1" y1="60.96" x2="162.56" y2="60.96" width="0.1524" layer="91"/>
<wire x1="162.56" y1="60.96" x2="149.86" y2="60.96" width="0.1524" layer="91"/>
<wire x1="149.86" y1="60.96" x2="149.86" y2="43.18" width="0.1524" layer="91"/>
<wire x1="149.86" y1="43.18" x2="83.82" y2="43.18" width="0.1524" layer="91"/>
<wire x1="83.82" y1="43.18" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<wire x1="83.82" y1="63.5" x2="93.98" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PTB5"/>
<wire x1="93.98" y1="63.5" x2="96.52" y2="63.5" width="0.1524" layer="91"/>
<junction x="93.98" y="63.5"/>
<pinref part="U$3" gate="G$1" pin="P$4"/>
<junction x="162.56" y="60.96"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="P$8"/>
<wire x1="172.72" y1="50.8" x2="172.72" y2="53.34" width="0.1524" layer="91"/>
<wire x1="172.72" y1="53.34" x2="134.62" y2="53.34" width="0.1524" layer="91"/>
<wire x1="134.62" y1="53.34" x2="134.62" y2="78.74" width="0.1524" layer="91"/>
<wire x1="134.62" y1="78.74" x2="127" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PTA3/SCL"/>
<wire x1="127" y1="78.74" x2="124.46" y2="78.74" width="0.1524" layer="91"/>
<junction x="127" y="78.74"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="180.34" y1="53.34" x2="180.34" y2="50.8" width="0.1524" layer="91"/>
<wire x1="180.34" y1="50.8" x2="137.16" y2="50.8" width="0.1524" layer="91"/>
<wire x1="137.16" y1="50.8" x2="137.16" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PTA2/SDA"/>
<wire x1="137.16" y1="83.82" x2="127" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P$7"/>
<junction x="180.34" y="50.8"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="187.96" y1="55.88" x2="187.96" y2="50.8" width="0.1524" layer="91"/>
<wire x1="187.96" y1="50.8" x2="187.96" y2="45.72" width="0.1524" layer="91"/>
<wire x1="187.96" y1="45.72" x2="139.7" y2="45.72" width="0.1524" layer="91"/>
<wire x1="139.7" y1="45.72" x2="139.7" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PTA1"/>
<wire x1="139.7" y1="88.9" x2="127" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P$6"/>
<junction x="187.96" y="50.8"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="P$5"/>
<wire x1="195.58" y1="50.8" x2="195.58" y2="40.64" width="0.1524" layer="91"/>
<wire x1="195.58" y1="40.64" x2="152.4" y2="40.64" width="0.1524" layer="91"/>
<wire x1="152.4" y1="40.64" x2="152.4" y2="93.98" width="0.1524" layer="91"/>
<wire x1="152.4" y1="93.98" x2="127" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PTA0"/>
<wire x1="127" y1="93.98" x2="124.46" y2="93.98" width="0.1524" layer="91"/>
<junction x="127" y="93.98"/>
</segment>
</net>
<net name="0" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VSS"/>
<pinref part="X_1" gate="G$1" pin="0"/>
<wire x1="93.98" y1="78.74" x2="76.2" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X_2" gate="G$1" pin="0"/>
<wire x1="-5.08" y1="78.74" x2="-30.48" y2="78.74" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="78.74" x2="-30.48" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="PTB0"/>
<wire x1="25.4" y1="73.66" x2="33.02" y2="73.66" width="0.1524" layer="91"/>
<wire x1="33.02" y1="73.66" x2="33.02" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="PTB1"/>
<wire x1="33.02" y1="43.18" x2="33.02" y2="58.42" width="0.1524" layer="91"/>
<wire x1="25.4" y1="68.58" x2="33.02" y2="68.58" width="0.1524" layer="91"/>
<wire x1="33.02" y1="68.58" x2="33.02" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="PTB2"/>
<wire x1="25.4" y1="63.5" x2="33.02" y2="63.5" width="0.1524" layer="91"/>
<wire x1="33.02" y1="63.5" x2="33.02" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="PTB3"/>
<wire x1="33.02" y1="58.42" x2="25.4" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="PTB7/SCL"/>
<wire x1="-7.62" y1="73.66" x2="-17.78" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="73.66" x2="-17.78" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="43.18" x2="-17.78" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="68.58" x2="-17.78" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="68.58" x2="-17.78" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="PTB5"/>
<wire x1="-7.62" y1="63.5" x2="-17.78" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="63.5" x2="-17.78" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="58.42" x2="-5.08" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="A1"/>
<wire x1="-5.08" y1="25.4" x2="-22.86" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="A2"/>
<wire x1="-5.08" y1="20.32" x2="-22.86" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="A3"/>
<wire x1="-5.08" y1="15.24" x2="-22.86" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="A4"/>
<wire x1="-5.08" y1="10.16" x2="-22.86" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="A5"/>
<wire x1="-5.08" y1="5.08" x2="-22.86" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="A6"/>
<wire x1="-5.08" y1="0" x2="-22.86" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="A7"/>
<wire x1="-5.08" y1="-5.08" x2="-22.86" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="A8"/>
<wire x1="-5.08" y1="-10.16" x2="-22.86" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PTB7/SCL"/>
<wire x1="93.98" y1="73.66" x2="53.34" y2="73.66" width="0.1524" layer="91"/>
<wire x1="53.34" y1="73.66" x2="53.34" y2="78.74" width="0.1524" layer="91"/>
<wire x1="53.34" y1="78.74" x2="22.86" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PTB6/SDA"/>
<wire x1="93.98" y1="68.58" x2="43.18" y2="68.58" width="0.1524" layer="91"/>
<wire x1="43.18" y1="68.58" x2="43.18" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="PTA2/SDA"/>
<wire x1="43.18" y1="83.82" x2="25.4" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="B1"/>
<wire x1="20.32" y1="20.32" x2="40.64" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<wire x1="17.78" y1="15.24" x2="22.86" y2="15.24" width="0.1524" layer="91"/>
<wire x1="22.86" y1="15.24" x2="22.86" y2="17.78" width="0.1524" layer="91"/>
<wire x1="22.86" y1="17.78" x2="43.18" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="B3"/>
<wire x1="20.32" y1="10.16" x2="25.4" y2="10.16" width="0.1524" layer="91"/>
<wire x1="25.4" y1="10.16" x2="25.4" y2="15.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="15.24" x2="40.64" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="B4"/>
<wire x1="20.32" y1="5.08" x2="27.94" y2="5.08" width="0.1524" layer="91"/>
<wire x1="27.94" y1="5.08" x2="27.94" y2="12.7" width="0.1524" layer="91"/>
<wire x1="27.94" y1="12.7" x2="40.64" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="B5"/>
<wire x1="20.32" y1="0" x2="30.48" y2="0" width="0.1524" layer="91"/>
<wire x1="30.48" y1="0" x2="30.48" y2="10.16" width="0.1524" layer="91"/>
<wire x1="30.48" y1="10.16" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="B6"/>
<wire x1="20.32" y1="-5.08" x2="33.02" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-5.08" x2="33.02" y2="7.62" width="0.1524" layer="91"/>
<wire x1="33.02" y1="7.62" x2="43.18" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<wire x1="17.78" y1="-10.16" x2="35.56" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-10.16" x2="35.56" y2="5.08" width="0.1524" layer="91"/>
<wire x1="35.56" y1="5.08" x2="40.64" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<wire x1="17.78" y1="-15.24" x2="38.1" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-15.24" x2="38.1" y2="2.54" width="0.1524" layer="91"/>
<wire x1="38.1" y1="2.54" x2="40.64" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<wire x1="50.8" y1="20.32" x2="53.34" y2="20.32" width="0.1524" layer="91"/>
<wire x1="53.34" y1="20.32" x2="53.34" y2="30.48" width="0.1524" layer="91"/>
<wire x1="53.34" y1="30.48" x2="76.2" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<wire x1="50.8" y1="17.78" x2="55.88" y2="17.78" width="0.1524" layer="91"/>
<wire x1="55.88" y1="17.78" x2="55.88" y2="20.32" width="0.1524" layer="91"/>
<pinref part="DZ1" gate="-3" pin="A"/>
<wire x1="55.88" y1="20.32" x2="73.66" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<wire x1="50.8" y1="15.24" x2="71.12" y2="15.24" width="0.1524" layer="91"/>
<wire x1="71.12" y1="15.24" x2="71.12" y2="10.16" width="0.1524" layer="91"/>
<wire x1="71.12" y1="10.16" x2="76.2" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<wire x1="50.8" y1="12.7" x2="68.58" y2="12.7" width="0.1524" layer="91"/>
<wire x1="68.58" y1="12.7" x2="68.58" y2="0" width="0.1524" layer="91"/>
<pinref part="DZ1" gate="-1" pin="A"/>
<wire x1="68.58" y1="0" x2="73.66" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<wire x1="50.8" y1="10.16" x2="66.04" y2="10.16" width="0.1524" layer="91"/>
<wire x1="66.04" y1="10.16" x2="66.04" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="DZ2" gate="-4" pin="A"/>
<wire x1="66.04" y1="-10.16" x2="73.66" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<wire x1="50.8" y1="7.62" x2="63.5" y2="7.62" width="0.1524" layer="91"/>
<wire x1="63.5" y1="7.62" x2="63.5" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="DZ2" gate="-3" pin="A"/>
<wire x1="63.5" y1="-20.32" x2="73.66" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<wire x1="50.8" y1="5.08" x2="60.96" y2="5.08" width="0.1524" layer="91"/>
<wire x1="60.96" y1="5.08" x2="60.96" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-30.48" x2="76.2" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<wire x1="50.8" y1="2.54" x2="58.42" y2="2.54" width="0.1524" layer="91"/>
<wire x1="58.42" y1="2.54" x2="58.42" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-40.64" x2="76.2" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
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
