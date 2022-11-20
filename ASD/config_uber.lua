
--██╗░░░██╗██████╗░███████╗██████╗░  ░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
--██║░░░██║██╔══██╗██╔════╝██╔══██╗  ██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
--██║░░░██║██████╦╝█████╗░░██████╔╝  ██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
--██║░░░██║██╔══██╗██╔══╝░░██╔══██╗  ██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
--╚██████╔╝██████╦╝███████╗██║░░██║  ╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
--░╚═════╝░╚═════╝░╚══════╝╚═╝░░╚═╝  ░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░

Config.UberMaximumPerKilometer = 100 -- Price per kilometer.

Config.Decimals = false
Config.UberMinimumMoney = 5000 -- Minimum money to enter service or to request a vehicle.
Config.UberMaximumMoney = 8000 -- Maximum price per trip, you can not earn more than this for each trip.
Config.UberDriverAccount = 'bank' -- Remember that if you use QBCore, the account 'money' does not exist, it is 'cash'.

Config.Classes = { -- You can ignore this setting, it will be executed in future updates.
	[0] = 'COMPACT', -- Compacts
	[1] = 'SEDAN', -- Sedans
	[2] = 'SUV', -- SUVs
	[3] = 'COUPE', -- Coupes
	[4] = 'MUSCLE', -- Muscle
	[5] = 'SPORT CLASSIC', -- Sports Classics
	[6] = 'SPORT', -- Sports
	[7] = 'SUPER', -- Super
	[8] = 'MOTOR', -- Motorcycles
	[9] = 'OFFROAD', -- Off-road
}

Config.Colors = { -- You can ignore this setting, it will be executed in future updates.
    [0] = "Negro Metálico",
    [1] = "Negro grafito metalizado",
    [2] = "Acero Negro Metálico",
    [3] = "Plata oscuro metalizado",
    [4] = "Plata Metálica",
    [5] = "Plata azul metálico",
    [6] = "Gris acero metalizado",
    [7] = "Plata Sombra Metálica",
    [8] = "Piedra Metálica Plata",
    [9] = "Plata medianoche metálica",
    [10] = "Metal Arma Metálica",
    [11] = "Gris antracita metalizado",
    [12] = "Negro mate",
    [13] = "Gris Mate",
    [14] = "Gris claro mate",
    [15] = "Negro Útil",
    [16] = "Poly negro utilitario",
    [17] = "Utilidad Plata oscura",
    [18] = "Plata Útil",
    [19] = "Pistola de metal utilitaria",
    [20] = "Plata Sombra Útil",
    [21] = "Negro Desgastado",
    [22] = "Grafito desgastado",
    [23] = "Gris plateado desgastado",
    [24] = "Plata gastada",
    [25] = "Plata azul desgastada",
    [26] = "Plata sombría desgastada",
    [27] = "Rojo Metálico",
    [28] = "Rojo Turín Metálico",
    [29] = "Fórmula Roja Metálica",
    [30] = "Rojo Resplandor Metálico",
    [31] = "Rojo Metálico Elegante",
    [32] = "Rojo granate metalizado",
    [33] = "Rojo desierto metalizado",
    [34] = "Rojo Cabernet Metálico",
    [35] = "Rojo caramelo metalizado",
    [36] = "Naranja Amanecer Metálico",
    [37] = "Oro Clásico Metálico",
    [38] = "Naranja metalizado",
    [39] = "Rojo mate",
    [40] = "Rojo oscuro mate",
    [41] = "Naranja mate",
    [42] = "Amarillo Mate",
    [43] = "Rojo Útil",
    [44] = "Rojo Brillante Util",
    [45] = "Rojo Granate Util",
    [46] = "Rojo Desgastado",
    [47] = "Rojo Dorado Desgastado",
    [48] = "Rojo oscuro desgastado",
    [49] = "Verde oscuro metalizado",
    [50] = "Verde carrera metalizado",
    [51] = "Verde Mar Metálico",
    [52] = "Verde Oliva Metálico",
    [53] = "Verde Metálico",
    [54] = "Verde Azul Gasolina Metalizado",
    [55] = "Verde Lima Mate",
    [56] = "Verde oscuro útil",
    [57] = "Verde Útil",
    [58] = "Verde desgastado oscuro",
    [59] = "Verde desgastado",
    [60] = "Lavado de mar desgastado",
    [61] = "Azul medianoche metalizado",
    [62] = "Azul oscuro metalizado",
    [63] = "Azul Sajonia Metalizado",
    [64] = "Azul Metálico",
    [65] = "Azul marino metalizado",
    [66] = "Puerto Azul Metálico",
    [67] = "Azul diamante metalizado",
    [68] = "Azul surf metalizado",
    [69] = "Verde azulado metalizado",
    [70] = "Azul Metálico Brillante",
    [71] = "Azul Púrpura Metálico",
    [72] = "Azul metalizado Spinnaker",
    [73] = "Ultra azul metalizado",
    [74] = "Azul Metálico Brillante",
    [75] = "Azul Oscuro Útil",
    [76] = "Azul medianoche utilitario",
    [77] = "Azul Útil",
    [78] = "Util Espuma Marina Azul",
    [79] = "Utilidad Celeste",
    [80] = "Utilidad Maui Blue Poly",
    [81] = "Azul Brillante Util",
    [82] = "Azul oscuro mate",
    [83] = "Azul Mate",
    [84] = "Azul medianoche mate",
    [85] = "Usado azul oscuro",
    [86] = "Azul Desgastado",
    [87] = "Usado Azul claro",
    [88] = "Taxi Amarillo Metálico",
    [89] = "Raza Metálica Amarilla",
    [90] = "Bronce Metálico",
    [91] = "Pájaro amarillo metalizado",
    [92] = "Lima Metálica",
    [93] ="Champagne Metálico",
    [94] ="Beige Pueblo Metálico",
    [95] ="Marfil oscuro metalizado",
    [96] ="Marrón Choco Metalizado",
    [97] ="Marrón dorado metalizado",
    [98] ="Marrón claro metalizado",
    [99] ="Beige Malla Metálica",
    [100] ="Marrón alga metalizado",
    [101] ="Marrón Biston Metálico",
    [102] ="Madera Metálica De Haya",
    [103] ="Haya Oscura Metálica",
    [104] ="Naranja Choco Metálico",
    [105] ="Arena de playa metálica",
    [106] ="Arena blanqueada por el sol metálico",
    [107] ="Crema Metálica",
    [108] ="Café Útil",
    [109] ="Util Marrón Medio",
    [110] ="Marrón claro utilitario",
    [111] ="Blanco metalizado",
    [112] ="Blanco Escarcha Metálico",
    [113] ="Beige miel degradado",
    [114] ="Marrón Desgastado",
    [115] ="Marrón oscuro desgastado",
    [116] ="Beige pajizo desgastado",
    [117] ="Acero cepillado",
    [118] ="Acero negro cepillado",
    [119] ="Aluminio cepillado",
    [120] ="Cromo",
    [121] ="Blanco Desgastado",
    [122] ="Blanco hueso utilitario",
    [123] ="Naranja Desgastado",
    [124] ="Anaranjado claro desgastado",
    [125] ="Verde Securicor Metálico",
    [126] ="Taxi amarillo desgastado",
    [127] ="coche de policía azul",
    [128] ="Verde mate",
    [129] ="Marrón mate",
    [130] ="Naranja Desgastado",
    [131] ="Blanco Mate",
    [132] ="Blanco Desgastado",
    [133] ="Verde militar verde oliva desgastado",
    [134] ="Blanco puro",
    [135] ="Rosa fuerte",
    [136] ="Rosa salmón",
    [137] ="Rosado Bermellón Metálico",
    [138] ="Naranja",
    [139] ="Verde",
    [140] ="Azul",
    [141] ="Azul Negro Metálico",
    [142] ="Púrpura Negro Metálico",
    [143] ="Negro Metálico Rojo",
    [144] ="verde cazador",
    [145]="Púrpura Metálico",
    [146] ="Azul Oscuro Metálico V",
    [147] ="MODSHOP NEGRO",
    [148] ="Púrpura mate",
    [149] ="Púrpura oscuro mate",
    [150] ="Rojo lava metalizado",
    [151] ="Verde bosque mate",
    [152] ="Verde oliva mate",
    [153] ="Marrón desierto mate",
    [154] ="Bronceado desierto mate",
    [155] ="Verde Foilage Mate",
    [156] ="COLOR DE ALEACIÓN POR DEFECTO",
    [157] ="Azul épsilon",
    [158] ="Oro puro",
    [159] ="Oro cepillado",
}

-- Uber Eats
Config.uberPriceMultiplier = 1.5 
Config.uberTipMin = 30 
Config.uberTipMax = 50 

Config.uberDelivery = {
    [1] = {["x"] = 8.69, ["y"] = -243.09, ["z"] = 47.66},
    [2] = {["x"] = 113.74, ["y"] = -277.95, ["z"] = 54.51},
    [3] = {["x"] = 201.56, ["y"] = -148.76, ["z"] = 61.47},
    [4] = {["x"] = -206.84, ["y"] = 159.49, ["z"] = 74.08},
    [5] = {["x"] = 38.83, ["y"] = -71.64, ["z"] = 63.83},
    [6] = {["x"] = 47.84, ["y"] = -29.16, ["z"] = 73.71},
    [7] = {["x"] = -264.41, ["y"] = 98.82, ["z"] = 69.27},
    [8] = {["x"] = -419.34, ["y"] = 221.12, ["z"] = 83.6},
    [9] = {["x"] = -998.43, ["y"] = 158.42, ["z"] = 62.31},
    [10] = {["x"] = -1026.57, ["y"] = 360.64, ["z"] = 71.36},
    [11] = {["x"] = -967.06, ["y"] = 510.76, ["z"] = 82.07},
    [12] = {["x"] = -1009.64, ["y"] = 478.93, ["z"] = 79.41},
    [13] = {["x"] = -1308.05, ["y"] = 448.59, ["z"] = 100.86},
    [14] = {["x"] = 557.39, ["y"] = -1759.57, ["z"] = 29.31},
    [15] = {["x"] = 325.1, ["y"] = -229.59, ["z"] = 54.22},
    [16] = {["x"] = 414.82, ["y"] = -217.57, ["z"] = 59.91},
    [17] = {["x"] = 430.85, ["y"] = -941.91, ["z"] = 29.19},
    [18] = {["x"] = -587.79, ["y"] = -783.53, ["z"] = 25.4},
    [19] = {["x"] = -741.54, ["y"] = -982.28, ["z"] = 17.44},
    [20] = {["x"] = -668.23, ["y"] = -971.58, ["z"] = 22.34},
    [21] = {["x"] = -664.21, ["y"] = -1218.25, ["z"] = 11.81},
    [22] = {["x"] = 249.99, ["y"] = -1730.79, ["z"] = 29.67},
    [23] = {["x"] = 405.77, ["y"] = -1751.18, ["z"] = 29.71 },
    [24] = {["x"] = 454.96, ["y"] = -1580.25, ["z"] = 32.82},
    [25] = {["x"] = 278.81, ["y"] = -1117.96, ["z"] = 29.42},
    [26] = {["x"] = 101.82, ["y"] = -819.49, ["z"] = 31.31},
    [27] = {["x"] = -416.72, ["y"] = -186.79, ["z"] = 37.45},
}

Config.uberItems = {
	-- [1] = {["item"] = "tosti", ["name"] = "Sandwich", ["price"] = 100},
    -- [2] = {["item"] = "classic_phone", ["name"] = "Phone", ["price"] = 200},
    [1] = {["item"] = "cola", ["name"] = "Cola", ["price"] = 40},
	[2] = {["item"] = "bocadillo", ["name"] = "Bocadillo", ["price"] = 40},
}