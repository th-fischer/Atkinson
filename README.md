# Atkinson-index

This computes the Atkinson index as discussed in [1] for the software Matlab:

out=atkinson(vector, type, parameter)

"out" is the Atkinson index. "vector" is an input in vector form. There are three options specified by "type":

type= 'CRRA': Constant Relative Risk Aversion with "parameter" measuring the relative risk aversion (parameter "rho" in the paper). For this type of risk aversion "vector" must only contain positive variables.

type='CARA': Constant Absolute Risk Aversion with "parameter" measuring the absolute risk aversion (parameter "lambda" in the paper under the assumption - in the paper's notation - "w0=1").

type='quad': Quadratic utility with "parameter" measuring the saturation level (parameter "phi" in the paper's notation, with the implicit assumptions "w0=lambda=1").



[1] Fischer, Thomas and Fredrik Lundtofte (2018): Unequal Returns: Using the Atkinson Index to Measure Financial Risk; Lund University Working Papers,  http://lup.lub.lu.se/record/cf40562c-6fcf-46c8-8ea5-449af9f78277
