import itertools

n,q = 128, 256
P.<x> = PolynomialRing(Zmod(q))
Q.<y> = P.quotient(x^n+1)

b = y^127 + 81*y^126 + 71*y^124 + 44*y^123 + 100*y^122 + 218*y^121 + 235*y^120 + y^119 + 84*y^118 + 191*y^117 + 108*y^116 + 18*y^115 + 168*y^114 + 254*y^113 + 226*y^112 + 185*y^111 + 146*y^110 + 125*y^109 + 181*y^108 + 42*y^106 + 147*y^105 + 14*y^104 + 254*y^103 + 32*y^102 + 255*y^101 + 230*y^100 + 153*y^99 + 210*y^98 + 245*y^97 + 41*y^96 + 2*y^95 + 105*y^94 + 103*y^93 + 185*y^92 + 182*y^91 + 75*y^90 + 53*y^89 + 2*y^88 + 254*y^87 + 28*y^86 + 89*y^85 + 111*y^84 + 44*y^83 + 94*y^82 + 117*y^81 + 254*y^80 + 82*y^79 + y^78 + 33*y^77 + 30*y^76 + 156*y^75 + 161*y^74 + 10*y^73 + 120*y^72 + 74*y^71 + 254*y^70 + 26*y^69 + 189*y^68 + 62*y^67 + 201*y^66 + 125*y^65 + 249*y^64 + 173*y^63 + 130*y^62 + y^61 + 128*y^60 + 99*y^59 + 2*y^57 + 142*y^56 + 192*y^55 + 204*y^53 + 197*y^52 + 160*y^51 + 197*y^50 + 42*y^49 + 255*y^47 + 13*y^46 + 43*y^44 + 76*y^43 + y^41 + 182*y^40 + 55*y^39 + 164*y^37 + 10*y^36 + 67*y^35 + 21*y^34 + 119*y^33 + 115*y^32 + 235*y^31 + 211*y^30 + 81*y^29 + 138*y^28 + 254*y^27 + 78*y^26 + y^25 + 238*y^24 + 236*y^23 + 91*y^22 + 2*y^21 + 156*y^20 + 37*y^19 + 166*y^18 + 132*y^17 + 21*y^16 + 72*y^15 + 180*y^14 + 12*y^13 + 207*y^12 + 90*y^11 + 236*y^10 + 255*y^9 + 168*y^8 + 161*y^7 + 15*y^6 + 152*y^5 + 142*y^4 + 94*y^3 + 25*y^2 + 2*y + 35
a = 107*y^127 + 175*y^126 + 175*y^125 + 35*y^124 + 234*y^123 + 207*y^122 + 238*y^121 + 246*y^120 + 22*y^119 + 43*y^118 + 96*y^117 + 182*y^116 + 10*y^115 + 172*y^114 + 27*y^113 + 240*y^112 + 73*y^111 + 72*y^110 + 191*y^109 + 38*y^108 + 124*y^107 + 108*y^106 + 147*y^105 + 121*y^104 + 207*y^103 + 31*y^102 + 35*y^101 + 13*y^100 + 51*y^99 + 24*y^98 + 244*y^97 + 21*y^96 + 157*y^95 + 203*y^94 + 103*y^93 + 35*y^92 + 92*y^91 + 179*y^90 + 205*y^89 + 67*y^88 + 5*y^87 + 228*y^86 + 89*y^85 + 111*y^84 + 211*y^83 + 47*y^82 + 58*y^81 + 210*y^80 + 214*y^79 + 59*y^78 + 33*y^77 + 15*y^76 + 178*y^75 + 97*y^74 + 245*y^73 + 69*y^72 + 220*y^71 + 114*y^70 + 114*y^69 + 33*y^68 + 196*y^67 + 228*y^66 + 125*y^65 + 6*y^64 + 83*y^63 + 130*y^62 + 223*y^61 + 65*y^60 + 98*y^59 + 122*y^58 + 252*y^57 + 70*y^56 + 191*y^55 + 73*y^54 + 205*y^53 + 98*y^52 + 95*y^51 + 58*y^50 + 212*y^49 + 116*y^48 + y^47 + 242*y^46 + 91*y^45 + 21*y^44 + 91*y^43 + y^42 + 230*y^41 + 184*y^40 + 201*y^39 + 88*y^38 + 92*y^37 + 244*y^36 + 94*y^35 + 10*y^34 + 136*y^33 + 113*y^32 + 235*y^31 + 151*y^30 + 216*y^29 + 59*y^28 + 114*y^27 + 216*y^26 + 68*y^25 + 239*y^24 + 235*y^23 + 93*y^22 + 137*y^21 + 157*y^20 + 39*y^19 + 165*y^18 + 61*y^17 + 233*y^16 + 35*y^15 + 217*y^14 + 134*y^13 + 207*y^12 + 90*y^11 + 235*y^10 + 40*y^9 + 212*y^8 + 47*y^7 + 14*y^6 + 105*y^5 + 199*y^4 + 82*y^3 + 23*y^2 + 74*y + 111
pk = (b,a)

u = 214*y^127 + 79*y^126 + 95*y^125 + 2*y^124 + 2*y^123 + 20*y^121 + 2*y^120 + 24*y^119 + 45*y^118 + 190*y^117 + 107*y^116 + 234*y^115 + 254*y^114 + 228*y^113 + 15*y^112 + 75*y^111 + 184*y^110 + 65*y^109 + 37*y^108 + 124*y^107 + 214*y^106 + 145*y^105 + 243*y^104 + 159*y^103 + 192*y^102 + 35*y^101 + 254*y^100 + 156*y^99 + 26*y^98 + 26*y^97 + 43*y^96 + 99*y^95 + y^94 + 208*y^93 + 35*y^92 + 2*y^91 + 153*y^89 + 191*y^88 + 254*y^87 + 201*y^86 + y^85 + y^84 + 88*y^83 + 209*y^82 + 114*y^81 + 211*y^80 + 119*y^78 + 223*y^77 + y^76 + 76*y^75 + 96*y^74 + 233*y^73 + 185*y^72 + 220*y^71 + 2*y^70 + 116*y^69 + 222*y^68 + y^67 + 8*y^65 + 14*y^64 + 166*y^63 + 129*y^62 + 221*y^61 + 131*y^60 + y^59 + 255*y^58 + 9*y^57 + 254*y^56 + 128*y^55 + 181*y^54 + 50*y^53 + 99*y^52 + 96*y^51 + 140*y^50 + 45*y^49 + 3*y^47 + 240*y^46 + 165*y^45 + 233*y^44 + 93*y^43 + 255*y^42 + 229*y^41 + 183*y^40 + 148*y^39 + 2*y^38 + 90*y^37 + 10*y^36 + 255*y^35 + 246*y^34 + 254*y^33 + 254*y^32 + 22*y^31 + 107*y^30 + 255*y^29 + 254*y^28 + 27*y^27 + 214*y^26 + 67*y^25 + 18*y^24 + y^23 + 70*y^22 + 119*y^21 + 255*y^20 + 215*y^19 + 89*y^18 + 59*y^17 + 231*y^16 + 222*y^15 + 177*y^14 + 135*y^13 + 50*y^12 + 255*y^11 + 42*y^10 + 178*y^9 + 2*y^8 + 209*y^7 + 241*y^6 + 208*y^5 + 144*y^4 + y^3 + 47*y^2 + 2*y + 113
v = 132*y^127 + 46*y^126 + 127*y^125 + 127*y^124 + 129*y^123 + 128*y^122 + 40*y^121 + 2*y^120 + 131*y^119 + 214*y^118 + 254*y^117 + 86*y^116 + 94*y^115 + 129*y^114 + 4*y^113 + 30*y^112 + 57*y^111 + 240*y^110 + 5*y^109 + 55*y^108 + 129*y^107 + 211*y^106 + 145*y^105 + 26*y^104 + 250*y^103 + 191*y^102 + 127*y^101 + 128*y^100 + 207*y^99 + 84*y^98 + 152*y^97 + 84*y^96 + 126*y^95 + 130*y^94 + 76*y^93 + 59*y^92 + 2*y^91 + 130*y^90 + 236*y^89 + 253*y^88 + 255*y^87 + 56*y^86 + y^85 + 41*y^83 + 36*y^82 + 107*y^81 + 254*y^80 + 126*y^79 + 132*y^78 + 96*y^77 + 127*y^76 + 230*y^75 + 161*y^74 + 150*y^73 + 138*y^72 + 74*y^71 + 129*y^70 + 26*y^69 + 195*y^68 + 128*y^67 + 130*y^66 + 134*y^65 + 244*y^64 + 216*y^63 + 128*y^62 + 131*y^61 + y^60 + y^59 + 128*y^58 + 124*y^57 + 2*y^56 + 2*y^55 + 255*y^54 + 182*y^53 + 68*y^52 + 159*y^51 + 246*y^50 + 87*y^49 + 127*y^47 + 11*y^46 + 85*y^44 + 74*y^43 + 126*y^42 + 130*y^41 + 184*y^40 + 112*y^39 + 2*y^38 + 35*y^37 + 245*y^36 + 126*y^35 + 106*y^34 + 128*y^33 + 254*y^32 + 150*y^31 + 171*y^30 + 127*y^29 + 126*y^28 + 132*y^27 + 79*y^26 + 130*y^25 + 17*y^24 + 2*y^23 + 73*y^22 + 125*y^21 + 129*y^20 + 221*y^19 + 217*y^18 + 3*y^17 + 21*y^16 + 56*y^15 + 231*y^14 + 139*y^13 + 179*y^12 + 254*y^11 + 167*y^10 + 128*y^9 + 254*y^8 + 93*y^7 + 239*y^6 + 49*y^5 + 28*y^4 + 128*y^3 + 178*y^2 + 127*y + 36
c = (u,v)

def finds(pk):
    b,a = pk
    s = []
    for i in range(n):
        for ss,ee in itertools.product(list(range(-2,3)),repeat=2):
            if a.list()[i]*ss+ee == b.list()[i]:
                s.append(ss)
                break
    return Q(s)

s = finds(pk)
print(decode(D(c,s)))
