local d=string.byte
local h=string.char
local c=string.sub
local N=table.concat
local e=table.insert
local O=math.ldexp

local C=getfenv or function()
    return _ENV 
end

local A=setmetatable
local r=select
local t=unpack or table.unpack
local s=tonumber
local function P(f)
    local l, n, a = "", "" , { }
    local o=256
    local t = { }
    
    for e = 0, o - 1 do 
        t[e] = h(e)
    end
        
    local e=1
    
    local function i()
        local l = s(c(f,e,e),36)e = e + 1
        local n = s(c(f,e,e+l-1),36)e = e + l
        return n 
    end
    
    l=h(i())a[1]=l
    
    while e<#f do 
        local e=i()
        if t[e]then 
            n=t[e]
        else 
            n=l..c(l,1,1)
        end;
        t[o] = l .. c(n,1,1)
        
        a[#a+1], l, o = n, n, o + 1 
    end
    
    return table.concat(a)
end

local i = P('26G26527526626627526525624O25026625W27923Z25425725424V25424Z25A25426626127924024824323S26625T27923Y25424P24424Z24R25024U25025B24X27P26327925A24X25027M24P26626227924E24Y24W24W25824Z25527E27924O24Z25B25028R25824X24X27929321926A29327926X24D26625X27924T28Q24Y24V25828P28T27523Z28V23Y25A24V25024T28I24227Z24P25429I24224R27K24X25824K24C23X24426R24224T27M24824L29W24V24Z29024F24V24Y24Q24U27K23S23Z24126T27325124P24P24T24U26F26Q26Q24U24P27L29I25828925426R25A28N2B026Q25524U26C25B26D26Q25A24K24L25524Q25527326S26623R29V29X24W29Z2A12A32A52A72A927M23S24V24X2832BW2C42A324224V2AC2AE2AG24X2AI2AK2AM24V2AR2AT2AV2AX2AZ2B12B328P2B62B82BA24U2BC2BE2BG2BI2BK2BM2BO2BQ2492BT29Y2A02C82A42A62A82AA24Z2CC27K2CE2CG2AL2AN2AP2CK2AU2AW2AY2BC2862B924V25526R2562562BC24Z25423T24S24W26H2BP26629U27523Y29W2D62BX2D92C02DC2C32C524Z2C72A224K2CA2DE2AF2AH2AJ2DI2CJ2AS2DM2CN2DP24U2DR2DT2DV2DX2DZ2E12E32BQ27R2752CL24T27727924A28126625F2792F72EU25026R28825B2CT26Q23U25226D24U24125624126Q25826R24T24Z25626628C2752B928O24Y24Z29K2652492542B925525423X24324A27Q27925529H24Q26625S28L2B329W23T2542AD24O27L2972GX29322523H29A25Z2GP29X29W24B2G628I28K27523V27K25528Q2582GY26B24D2GX24D21U29A2HA27A24X24Y25B29024U29B27G29X24X23T25024W2542GY23O29A26029D29Q24Z28I25V27925628127129Q25A2522AJ29125428S27F2G329024X2HS2IH2HU29C29L2542562862AE2GI2752492GL2J026525725028A2J42C12G725Y27925824O24P29G28V26R24X24O25826626427924V2JN2JD2GN2FA28129O29Q29S24329I27P2I627523U29Q29W2J427H25828S2JO27524Q2HK22A29A2JC29L2502IH24C2B128A24K23M2J42B82572G02G22652CP28Y2G027827527L2F824S2791U21X1V2302712L92L91U21W1V22N2LA2LB2L622W2LG2712LC1V22K2LK2L51V22S2LK26O2LL2361V22Q1V22P1U2LW2LY2M02M22LZ2M12LX2M62M52M42M82MB2M32M72ME2MA2MF2M92MC2GX2532112I528L2HQ2AM22E27925R2F52652KB2652712GX26726525R2752JO2KZ2N02652N12MZ2972MV2N82MW2GY2ND2JO2N32792K22MY2GX28C2NI2JO2HO2ND2N12MX26526L2792NS2N22932IU2NY2NE2IN2O12N12O02NC25G2NE25R27Y27R2H327527126X26527R27R2JC2NI2I627Y2NB2NG2O12OC2792NA2OI2652OK2752I62GO2OO2NX2612OZ26525P2O92ON2652OD2MY2OG2932OW2NE2IB2GY2NX2NI2752P92NA2PC2O12JO25U2NF2PH2P72P52OE2PF27925O2N225D2O929326Y2NW2ND25R2N32JO25Q2OS2N42NE25L2932N12GY2JO2N12782NI27R25K2Q92OH2QN25N2932I62NT27528C2QE29328K2N627927R28K2N125R2PZ2I625M2MT26826528C25H2MT27528K2QL2OE2RD26528K2O82NI29C25J2RC26527F25I2RO2H32PZ29728K2H32R227529C25C2QM29C29C2FE27929C2QG2PY2RP2652O02R32P826525E2MT2PZ2JC2O626H2SA24F2P62652GO2PL2SD2IB2702PM2GO2P12GO27F26B2NE26326M2SA2QA2K226O2QZ2932T72RH2792TA2652NK2652TD2O02TG2792KU25R29C2H32732QM2H32H32722O12JC2PB29327Y2O32792H327Y2NH2PJ26526W2TQ2SE26Z2TU2652Q22752NI27Y26T2GX2U12ND26326Q2SE23S2NE2JO26126N2792UN2UP2UR2752I22NH27Y2H32U62OE2QP2TR2652U92NI2JC2UC2O127Y26S2UH26527Y2RY2OV2U52QM2JC2JC2V627527Y26V2GX2U22Q42752GO2UG2972JC2SW2MY2JO2UZ26526U2VZ2652IB2JC26P2752692W52652PP27926D2VE2792UU27924P2SO2V02OS2V32U82UA2V92UE2TJ2972UI2VG2JC2V12NL2VH2VL2VA2652VP2972VR2VG2VU2GX2VX2ND2712W02SE2W32XC2WB2W72W92WB2WD2752WF2P72NH2PZ2H32SC2SI26526R2SH2WG2SK2SE22F2SO2IB2WY27126C2WB2IB2VM2WC2652UL2972P52P32NI2PX2NV2972PP2PP2PX2NI2P52TD2792IB2P52N92752PP2IB2W32YF26526K2QM2PX2PX2UR2SD2N32T32UD28K2Q82SL2972PX2Q82YI2WH2WZ2YU2652742792PP2SX2SE24L2NE2652S52ZP2ZS2RF2NF2952KE29A2MV2GK2582GM2P32FB24P2JW25427M23Y25024N27P2P928024P2GS2GU27L2662P924B2J728A25527H25A2WK2NF2662NK28M2HQ24V2GX21P24Y2HJ2GY31112972492HN27Z2812H72I9310J279310G31052512K92AK2GY26H29A2QP2L02KJ2II24Y2IK25527125B24K27124P251254311S2542B12JT27531012712GC27K27125628Q2G02HO2562HQ2HS24X2IT2HW2902HZ2I126521B22J21J21T23S23S1O2962GX25P31132932501T23Z2XW2QA2UD2PZ2S831342OP2752612ZA26523W2SO27R2N62OT2QN2NC27R2JO2I62NI28C313G2QT2R92TE2QW2NF2QU2Q0313R313P313R28C2NN2RH2HO2RL2RI2GX27F2NC2U42TF313Q2H32U3313X2QM3140313S27928K2NQ313Q2PH313Q313Y314G29C2NI314J2RO29C314327527F314V2SE2TZ314B313W313O314F313Z2O1314S2RG2SB313S2H32NA2S32VH27931472U72I6315B2U42H32KH3151314D31533158314G2P731452QS313R314M314E315Q313R314Q2RH2O331443162314W2T429328C27F315O265314O313R2P331452QV315C315A2WZ315D2IB2NI27F2XL2TK2SA316A316C28C316E2R12QM314S2IB316H315I2O127F2PT3167316Q31742N6314R2652PX3158314S2PI315T2XB31422652Q82G228C24B2NE28K2UQ279317L2WI27523X2ZP245315V2OS2I6314G2QC316P2QV316P3148316F316P313R243317M2OH2UV2653188317R265317T2XP313R2ZU2X3317W31392P3313K2752ZR315U279');

local o=bit and bit.bxor or function(e,n)
    local l,o=1,0 
    
    while e>0 and n>0 do 
        local a,c=e%2,n%2 
        
        if a~=c then 
            o=o+l 
        end 
        
        e,n,l=(e-a)/2,(n-c)/2,l*2 
    end 
    
    if e<n then 
        e=n 
    end 
    
    while e>0 do 
        local n=e%2 
        
        if n>0 then 
            o=o+l 
        end e,l=(e-n)/2,l*2 
    end 
    
    return o 
end 

local function n(n,e,l)
    if l then 
        local e=(n/2^(e-1))%2^((l-1)-(e-1)+1)
        return e-e%1
    else 
        local e=2^(e-1)
        
        return(n%(e+e)>=e)and 1 or 0
    end
end

local e=1

local function l()
    local l,c,n,a=d(i,e,e+3)
    l=o(l,221)c=o(c,221)n=o(n,221)a=o(a,221)e=e+4
    return(a*16777216)+(n*65536)+(c*256)+l
end

local function f()
    local l=o(d(i,e,e),221)
    e = e + 1
    return l
end

local function a()
    local n,l=d(i,e,e+2)
    n=o(n,221)
    l=o(l,221)
    e=e+2
    
    return(l*256)+n
end

local function Q()
    local o=l()
    local e=l()
    local c=1
    local o=(n(e,1,20)*(2^32))+o
    local l=n(e,21,31)
    local e=((-1)^n(e,32))
    
    if(l==0)then 
        if(o==0)then 
            return e*0
        else 
            l=1
            c=0
        end
    elseif (l==2047) then 
        return(o==0)and(e*(1/0)) or (e*(0/0))
    end
    
    return O(e,l-1023)*(c+(o/(2^52)))
end

local s=l

local function P(l)
    local n
    
    if (not l) then 
        l=s()
        
        if(l==0)then 
            return ''
        end
    end
    
    n=c(i,e,e+l-1);e=e+l
    
    local l={} 
    for e=1,#n do 
        l[e]=h(o(d(c(n,e,e)),221))
    end 
    
    return N(l)
end

local e=l

local function N(...)
    return{...},r('#',...)
end 

local function O()
    local h={}
    local d={}
    local e={}
    local i={h,d,nil,e}
    local e=l()
    local o={}
    for n=1,e do 
        local l=f()
        local e
        if (l==1) then 
            e=(f()~=0)
        elseif (l==0) then 
            e=Q()
        elseif (l==3) then 
            e=P()
        end
        
        o[n]=e
    end
    
    for i=1,l() do 
        local e=f()
        if (n(e,1,1)==0) then 
            local c=n(e,2,3)
            local t=n(e,4,6)
            local e={a(),a(),nil,nil}
            
            if (c==0) then 
                e[3]=a()
                e[4]=a()
            elseif (c==1) then 
                e[3]=l()
            elseif (c==2) then 
                e[3]=l()-(2^16)
            elseif (c==3) then 
                e[3]=l()-(2^16)e[4]=a()
            end
            
            if (n(t,1,1)==1) then 
                e[2]=o[e[2]]
            end 
            
            if (n(t,2,2)==1) then 
                e[3]=o[e[3]]
            end 
            
            if (n(t,3,3)==1) then 
                e[4]=o[e[4]]
            end 
            
            h[i]=e
        end 
    end
    
    for e=1,l() do 
        d[e-1]=O()
    end
    
    i[3]=f()
    
    return i
end

local function s(e,f,a)
    local l=e[1]
    local n=e[2]
    local e=e[3]
    return function(...)
        local o=l
        local P=n
        local c=e
        local d=N
        local l=1
        local i=-1
        local O={}
        local N={...}
        local r=r('#',...)-1
        local h={}
        local n={}
        
        for e=0,r do 
            if (e>=c) then 
                O[e-c]=N[e+1]
            else 
                n[e]=N[e+1]
            end
        end
        
        local e=r-c+1 
        local e
        local c
        
        while true do 
            e=o[l]
            c=e[1]
            
            if c<=35 then 
                if c<=17 then 
                    if c<=8 then 
                        if c<=3 then 
                            if c<=1 then 
                                if c==0 then 
                                    local i
                                    local h
                                    local d
                                    local c
                                    
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    c=e[2]d={n[c]()}
                                    h=e[4]
                                    i=0
                                    
                                    for e=c,h do 
                                        i=i+1
                                        n[e]=d[i]
                                    end 
                                    
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=a[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=f[e[3]]
                                    l=l+1
                                    e=o[l]
                                    c=e[2]n[c](n[c+1])l=l+1
                                    e=o[l]
                                    n[e[2]]=a[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]
                                    l=l+1
                                    e=o[l]
                                    c=e[2]n[c](t(n,c+1,e[3]))l=l+1
                                    e=o[l]
                                    n[e[2]]=a[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    
                                    for e=e[2],e[3]do 
                                        n[e]=nil
                                    end
                                    
                                    l=l+1
                                    e=o[l]
                                    c=e[2]n[c](n[c+1])l=l+1
                                    e=o[l]
                                    n[e[2]]=a[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1
                                    e=o[l]
                                    c=e[2]n[c](t(n,c+1,e[3]))l=l+1
                                    e=o[l]
                                    n[e[2]]=a[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]/e[4]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]-e[4]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]/e[4]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]+e[4]
                                    l=l+1
                                    e=o[l]
                                    c=e[2]n[c](t(n,c+1,e[3]))l=l+1
                                    e=o[l]
                                    n[e[2]]=a[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=f[e[3]]
                                    l=l+1
                                    e=o[l]
                                    c=e[2]n[c](n[c+1])l=l+1
                                    e=o[l]
                                    n[e[2]]=a[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1;e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1;e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1;e=o[l]
                                    c=e[2]n[c](t(n,c+1,e[3]))l=l+1
                                    e=o[l]
                                    n[e[2]]=a[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=f[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]/e[4]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]-e[4]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1
                                    e=o[l]
                                    c=e[2]n[c](t(n,c+1,e[3]))l=l+1
                                    e=o[l]
                                    n[e[2]]=a[e[3]]
                                    l=l+1;e=o[l]
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=f[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]+e[4]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]/e[4]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1
                                    e=o[l]
                                    c=e[2]n[c](t(n,c+1,e[3]))l=l+1
                                    e=o[l]
                                    n[e[2]]=f[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=a[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    c=e[2]n[c]=n[c]()l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]]-e[4]
                                    l=l+1
                                    e=o[l]
                                    
                                    if(n[e[2]]<n[e[4]])then 
                                        l=e[3]
                                    else 
                                        l=l+1
                                    end
                                else 
                                    local l=e[2]
                                    local o=n[e[3]]
                                    n[l+1]=o
                                    n[l]=o[e[4]]
                                end;
                            elseif c>2 then 
                                n[e[2]]=n[e[3]]/e[4]
                            else 
                                n[e[2]]=(e[3]~=0)
                            end
                        elseif c<=5 then 
                            if c==4 then 
                                local f
                                local c
                                n[e[2]]=a[e[3]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=n[e[3]][e[4]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=e[3]
                                l=l+1
                                e=o[l]
                                c=e[2]n[c]=n[c](n[c+1])l=l+1
                                e=o[l]
                                c=e[2]
                                f=n[e[3]]
                                n[c+1]=f
                                n[c]=f[e[4]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=(e[3]~=0)
                                l=l+1
                                e=o[l]
                                c=e[2]n[c](t(n,c+1,e[3]))l=l+1
                                e=o[l]
                                n[e[2]]=a[e[3]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=n[e[3]][e[4]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=e[3]
                            else 
                                n[e[2]]=n[e[3]]+e[4]
                                l=l+1
                                e=o[l]
                                f[e[3]]=n[e[2]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=f[e[3]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=f[e[3]]
                                l=l+1
                                e=o[l]
                                if (n[e[2]]<n[e[4]]) then 
                                    l=e[3]
                                else 
                                    l=l+1
                                end
                            end
                        elseif c<=6 then 
                            local l=e[2]
                            local c={n[l](n[l+1])}
                            local o=0
                            
                            for e=l,e[4]do 
                                o=o+1
                                n[e]=c[o]
                            end 
                        elseif c>7 then 
                            local c
                            n[e[2]]=a[e[3]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=n[e[3]][e[4]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            n[e[2]]=n[e[3]]
                            l=l+1
                            e=o[l]
                            c=e[2]n[c](t(n,c+1,e[3]))l=l+1
                            e=o[l]
                            n[e[2]]=a[e[3]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=n[e[3]][e[4]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            c=e[2]n[c]=n[c](t(n,c+1,e[3]))
                        else 
                            local f
                            local a
                            local s, h
                            local c
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            c=e[2]s,h=d(n[c](t(n,c+1,e[3])))i=h+c-1 
                            a=0
                            
                            for e=c,i do 
                                a=a+1
                                n[e]=s[a]
                            end
                            
                            l=l+1
                            e=o[l]
                            c=e[2]n[c](t(n,c+1,i))l=l+1
                            e=o[l]
                            c=e[2]
                            f=n[e[3]]
                            n[c+1]=f
                            n[c]=f[e[4]]
                            l=l+1
                            e=o[l]
                            c=e[2]n[c](n[c+1])
                        end
                    elseif c<=12 then
                        if c<=10 then
                            if c>9 then 
                                local l=e[2]n[l](t(n,l+1,e[3])) 
                            else 
                                local l=e[2]
                                local o,e=d(n[l](t(n,l+1,e[3])))i=e+l-1 
                                local e=0
                                for l=l,i do 
                                    e=e+1
                                    n[l]=o[e]
                                end
                            end
                        elseif c>11 then 
                            n[e[2]]=a[e[3]]
                        else 
                            local e=e[2]n[e](n[e+1])
                        end;
                    elseif c<=14 then 
                        if c==13 then 
                            local o=e[2]
                            local a=n[o+2]
                            local c=n[o]+a
                            n[o]=c
                            
                            if(a>0)then 
                                if(c<=n[o+1])then 
                                    l=e[3]
                                    n[o+3]=c
                                end 
                            elseif(c>=n[o+1])then 
                                l=e[3]
                                n[o+3]=c
                            end 
                        else 
                            n[e[2]]=n[e[3]][e[4]]
                        end
                    elseif c<=15 then 
                        for e=e[2],e[3]do 
                            n[e]=nil
                        end
                    elseif c>16 then 
                        n[e[2]]=n[e[3]]-e[4]
                    else 
                        n[e[2]]=a[e[3]]
                    end
                elseif c<=26 then 
                    if c<=21 then 
                        if c<=19 then 
                            if c>18 then 
                                local o=e[2]
                                local c=n[o]
                                local a=n[o+2]
                                
                                if(a>0)then 
                                    if(c>n[o+1])then 
                                        l=e[3]
                                    else 
                                        n[o+3]=c
                                    end 
                                elseif(c<n[o+1])then 
                                    l=e[3]
                                else 
                                    n[o+3]=c
                                end 
                            else 
                                local f
                                local i
                                local c
                                
                                n[e[2]]=a[e[3]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=n[e[3]][e[4]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=n[e[3]]
                                l=l+1
                                e=o[l]
                                c=e[2]i={n[c](n[c+1])}
                                f=0
                                
                                for e=c,e[4]do 
                                    f=f+1
                                    n[e]=i[f]
                                end 
                                
                                l=l+1
                                e=o[l]
                                n[e[2]]=a[e[3]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=n[e[3]][e[4]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=n[e[3]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=n[e[3]]
                                l=l+1
                                e=o[l]
                                n[e[2]]=n[e[3]]
                                l=l+1
                                e=o[l]
                                c=e[2]n[c]=n[c](t(n,c+1,e[3]))
                            end
                        elseif c>20 then 
                            for e=e[2],e[3]do 
                                n[e]=nil
                            end
                        else 
                            n[e[2]]=(e[3]~=0)
                        end
                    elseif c<=23 then 
                        if c==22 then 
                            local c
                            n[e[2]]=n[e[3]][e[4]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            c=e[2]n[c]=n[c](t(n,c+1,e[3]))l=l+1
                            e=o[l]
                            n[e[2]]=a[e[3]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=n[e[3]][e[4]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=a[e[3]]
                            l=l+1
                            e=o[l]
                            c=e[2]n[c]=n[c]()l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            c=e[2]n[c]=n[c](t(n,c+1,e[3]))
                        else 
                            local o=e[3]
                            local l=n[o]
                            
                            for e=o+1,e[4]do 
                                l=l..n[e]
                            end
                            
                            n[e[2]]=l
                        end
                    elseif c<=24 then 
                        local i=P[e[3]]
                        local t
                        local c={}
                        t=A({},{__index=function(l,e)
                            local e=c[e]
                            return e[1][e[2]]
                        end, __newindex=function(n,e,l)
                            local e=c[e]e[1][e[2]]=l
                        end
                    })
                        
                        for a=1,e[4]do 
                            l=l+1
                            local e=o[l]
                            
                            if e[1]==45 then 
                                c[a-1]={n,e[3]}
                            else 
                                c[a-1]={f,e[3]}
                            end

                            h[#h+1]=c
                        end

                        n[e[2]]=s(i,t,a)
                    elseif c>25 then 
                        local e=e[2]n[e](t(n,e+1,i))
                    else 
                        if(n[e[2]]<n[e[4]])then
                             l=e[3]
                            else 
                                l=l+1
                            end
                        end
                    elseif c<=30 then 
                        if c<=28 then 
                            if c==27 then 
                                local o=e[2]
                                local c={n[o](n[o+1])}
                                local l=0
                                
                                for e=o,e[4]do 
                                    l=l+1
                                    n[e]=c[l]
                                end 
                            else 
                                n[e[2]]=e[3]
                            end
                        elseif c>29 then 
                            do 
                                return 
                            end
                        else 
                            n[e[2]]=n[e[3]]/e[4]
                        end
                    elseif c<=32 then 
                        if c==31 then 
                            local e=e[2]n[e]=n[e]()
                        else 
                            n[e[2]]=e[3]
                        end
                    elseif c<=33 then 
                        n[e[2]]=n[e[3]]
                    elseif c>34 then 
                        local l=e[2]n[l]=n[l](t(n,l+1,e[3]))
                    else 
                        f[e[3]]=n[e[2]]
                    end
                elseif c<=53 then 
                    if c<=44 then 
                        if c<=39 then 
                            if c<=37 then 
                                if c>36 then 
                                    if(n[e[2]]<n[e[4]])then 
                                        l=e[3]
                                    else 
                                        l=l+1
                                    end
                                else 
                                    local c
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1
                                    e=o[l]
                                    c=e[2]n[c](n[c+1])l=l+1
                                    e=o[l]
                                    n[e[2]]=a[e[3]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=n[e[3]][e[4]]
                                    l=l+1
                                    e=o[l]
                                    n[e[2]]=e[3]
                                    l=l+1
                                    e=o[l]
                                    c=e[2]n[c](n[c+1])
                                end
                            elseif c>38 then 
                                local e=e[2]n[e]=n[e](n[e+1])
                            else 
                                n[e[2]]=n[e[3]]+e[4]
                            end;
                        elseif c<=41 then 
                            if c>40 then 
                                local o=e[3]
                                local l=n[o]
                                
                                for e=o+1,e[4]do 
                                    l=l..n[e]
                                end
                                
                                n[e[2]]=l
                            else 
                                if not n[e[2]]then 
                                    l=l+1
                                else 
                                    l=e[3]
                                end
                            end
                        elseif c<=42 then 
                            f[e[3]]=n[e[2]]
                        elseif c==43 then 
                            do 
                                return 
                            end
                        else 
                            n[e[2]]=f[e[3]]
                        end;
                    elseif c<=48 then 
                        if c<=46 then 
                            if c>45 then 
                                local l=e[2]
                                local o={n[l]()}
                                local c=e[4]
                                local e=0
                                
                                for l=l,c do 
                                    e=e+1
                                    n[l]=o[e]
                                end 
                            else 
                                n[e[2]]=n[e[3]]
                            end
                        elseif c>47 then 
                            local f
                            local a
                            local c
                            
                            c=e[2]n[c](t(n,c+1,e[3]))l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            c=e[2]
                            a=n[c]f=n[c+2]
                            
                            if(f>0)then 
                                if(a>n[c+1])then
                                    l=e[3]
                                else 
                                    n[c+3]=a
                                end 
                            elseif(a<n[c+1])then 
                                l=e[3]
                            else 
                                n[c+3]=a
                            end 
                        else 
                            if not n[e[2]]then 
                                l=l+1
                            else l=e[3]
                            end
                        end
                    elseif c<=50 then 
                        if c>49 then 
                            l=e[3]
                        else 
                            n[e[2]]=n[e[3]][e[4]]
                        end
                    elseif c<=51 then 
                        local i=P[e[3]]
                        local t
                        local c={}
                        t=A({},{__index=function(l,e)
                            local e=c[e]
                            return e[1][e[2]]
                        end, __newindex=function(n,e,l)
                            local e=c[e]e[1][e[2]]=l
                        end
                    })
                        
                        for a=1,e[4]do
                            l=l+1
                            local e=o[l]
                            
                            if e[1]==45 then 
                                c[a-1]={n,e[3]}
                            else 
                                c[a-1]={f,e[3]}
                            end
                            
                            h[#h+1]=c
                        end
                        
                        n[e[2]]=s(i,t,a)
                    elseif c==52 then 
                        local o=e[2]
                        local c=n[o]
                        local a=n[o+2]
                        
                        if(a>0)then 
                            if(c>n[o+1])then 
                                l=e[3]
                            else 
                                n[o+3]=c
                            end 
                        elseif(c<n[o+1])then 
                            l=e[3]
                        else 
                            n[o+3]=c
                        end 
                    else 
                        local c
                        n[e[2]]=n[e[3]][e[4]]
                        l=l+1
                        e=o[l]
                        n[e[2]]=e[3]
                        l=l+1
                        e=o[l]
                        n[e[2]]=e[3]
                        l=l+1
                        e=o[l]
                        c=e[2]n[c]=n[c](t(n,c+1,e[3]))l=l+1
                        e=o[l]
                        n[e[2]]=a[e[3]]
                        l=l+1
                        e=o[l]
                        n[e[2]]=n[e[3]][e[4]]
                        l=l+1
                        e=o[l]
                        n[e[2]]=a[e[3]]
                        l=l+1
                        e=o[l]
                        c=e[2]n[c]=n[c]()l=l+1
                        e=o[l]
                        n[e[2]]=e[3]
                        l=l+1
                        e=o[l]
                        c=e[2]n[c]=n[c](t(n,c+1,e[3]))
                    end
                elseif c<=62 then 
                    if c<=57 then 
                        if c<=55 then 
                            if c==54 then 
                                local e=e[2]
                                local o,l=d(n[e](n[e+1]))i=l+e-1 
                                local l=0
                                
                                for e=e,i do 
                                    l=l+1
                                    n[e]=o[l]
                                end
                            else 
                                local o=e[2]
                                local a=n[o+2]
                                local c=n[o]+a
                                n[o]=c
                                
                                if(a>0)then 
                                    if(c<=n[o+1])then 
                                        l=e[3]
                                        n[o+3]=c
                                    end 
                                elseif(c>=n[o+1])then 
                                    l=e[3]
                                    n[o+3]=c
                                end 
                            end
                        elseif c==56 then 
                            local e=e[2]n[e](t(n,e+1,i))
                        else 
                            local c
                            local i
                            local f
                            
                            n[e[2]]=n[e[3]][e[4]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            n[e[2]]=n[e[3]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            f=e[3]
                            i=n[f]
                            
                            for e=f+1,e[4]do 
                                i=i..n[e]
                            end
                            
                            n[e[2]]=i
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            c=e[2]n[c]=n[c](t(n,c+1,e[3]))l=l+1
                            e=o[l]
                            c=e[2]
                            f=n[e[3]]
                            n[c+1]=f
                            n[c]=f[e[4]]
                            l=l+1;e=o[l]
                            n[e[2]]=a[e[3]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=n[e[3]][e[4]]
                        end
                    elseif c<=59 then 
                        if c==58 then 
                            local l=e[2]
                            local o=n[e[3]];n[l+1]=o;n[l]=o[e[4]];
                        else
                            n[e[2]]=n[e[3]]+e[4]
                        end
                    elseif c<=60 then 
                        local e=e[2]
                        local o,l=d(n[e](n[e+1]))i=l+e-1 
                        local l=0
                        
                        for e=e,i do
                            l=l+1
                            n[e]=o[l]
                        end
                    elseif c==61 then 
                        local c
                        n[e[2]]=e[3]
                        l=l+1
                        e=o[l]
                        n[e[2]]=a[e[3]]
                        l=l+1
                        e=o[l]
                        n[e[2]]=n[e[3]][e[4]]
                        l=l+1
                        e=o[l]
                        n[e[2]]=e[3]
                        l=l+1
                        e=o[l]
                        n[e[2]]=e[3]
                        l=l+1
                        e=o[l]
                        n[e[2]]=e[3]
                        l=l+1
                        e=o[l]
                        c=e[2]n[c]=n[c](t(n,c+1,e[3]))l=l+1
                        e=o[l]
                        n[e[2]]=a[e[3]]
                        l=l+1
                        e=o[l]
                        n[e[2]]=n[e[3]][e[4]]
                        l=l+1
                        e=o[l]
                        c=e[2]n[c]=n[c]()
                    else 
                        local e=e[2]n[e]=n[e]()
                    end
                elseif c<=67 then 
                    if c<=64 then 
                        if c==63 then 
                            local l=e[2]n[l]=n[l](t(n,l+1,e[3]))
                        else 
                            local c
                            n[e[2]]=n[e[3]][e[4]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            c=e[2]n[c](n[c+1])l=l+1
                            e=o[l]
                            n[e[2]]=a[e[3]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=n[e[3]][e[4]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                            l=l+1
                            e=o[l]
                            c=e[2]n[c](n[c+1])l=l+1
                            e=o[l]
                            n[e[2]]=a[e[3]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=n[e[3]][e[4]]
                            l=l+1
                            e=o[l]
                            n[e[2]]=e[3]
                        end
                    elseif c<=65 then 
                        l=e[3]
                    elseif c==66 then 
                        local e=e[2]n[e]=n[e](n[e+1])
                    else 
                        local l=e[2]
                        local o,e=d(n[l](t(n,l+1,e[3])))i=e+l-1 
                        local e=0

                        for l=l,i do 
                            e=e+1
                            n[l]=o[e]
                        end
                    end
                elseif c<=69 then 
                    if c>68 then 
                        local e=e[2]n[e](n[e+1])
                    else 
                        local l=e[2]n[l](t(n,l+1,e[3]))
                    end
                elseif c<=70 then 
                    local l=e[2]
                    local o={n[l]()}
                    local c=e[4]
                    local e=0
                    
                    for l=l,c do 
                        e=e+1;n[l]=o[e]
                    end 
                elseif c>71 then 
                    n[e[2]]=f[e[3]]
                else 
                    n[e[2]]=n[e[3]]-e[4]
                end
                
                l=l+1
            end
        end
    end
    
    return 
    s(O(),{},C())()
