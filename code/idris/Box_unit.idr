Type checking ./Box.idr
λΠ> (mkBox mkUnit)
(input):1:8:When checking an application of constructor Box.mkBox:
        Type mismatch between
                unit (Type of mkUnit)
        and
                bool (Expected type)
λΠ> 
