Project Name: CirDir
Team: Omar Nasr(Solo)

Possible Algorithm:
	Topoligical Sorting
	Layered Graph Drawing/Sugiyama Algorithm

Graphic Utilities/Libraries:
	SFML
	QT
	JointJS API

Description:
	The project reads a verilog netlist file and draw an equivalent circut on the screen or export the circit to a png or other image files.

Assumptions:
	-Correct File.
	-And input port is drived by exactly one gate.

Limitations:
	-Only few standard cells are implemented and supported.
	-No Standard cells of multiple outputs are supported.
	-No Standard cells of buss inputs/outputs are supported.
	-Busses are treated as multiple seprate wires.
