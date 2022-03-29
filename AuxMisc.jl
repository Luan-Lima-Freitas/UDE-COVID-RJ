function SciRound(x,Digits=2)

    if Digits != trunc(Digits)
        Digits = trunc(Digits)
    end

    Exp = floor(log10(x))
    Power10 = 10. ^Exp


    Significand = string(round(x/Power10,digits=Digits))
    ExtraChars = 2
    if sign(x) == -1
        ExtraChars = ExtraChars+1
    end
    while sizeof(Significand) < Digits+ExtraChars
        Significand = Significand*"0"
    end

    if sign(Exp) != -1
        StringExp = "e+"*string(convert(Int8,Exp))
    else
        StringExp = "e"*string(convert(Int8,Exp))
    end

    Significand*StringExp

end

nothing
