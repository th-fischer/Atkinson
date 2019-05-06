# Atkinson-index

This computes the Atkinson index as discussed in [1] for the software Matlab:

out=atkinson(vector, type, parameter)

"out" is the Atkinson index. "vector" is an input in vector form containing positive elements only. There are three options specified by "type":

type= 'CRRA': Constant Relative Risk Aversion with "parameter" measuruing the relative risk aversion.

type='CARA': Constant Absolute Risk Aversion with "parameter" measuring the absolute risk aversion.

type='quad: Quadratic utilitz with "parameter" measuring the saturation level.


[1] Fischer, Thomas and Fredrik Lundtofte (2018): Unequal Returns: Using the Atkinson Index to Measure Financial Risk; Lund University Working Papers,  http://lup.lub.lu.se/record/cf40562c-6fcf-46c8-8ea5-449af9f78277
