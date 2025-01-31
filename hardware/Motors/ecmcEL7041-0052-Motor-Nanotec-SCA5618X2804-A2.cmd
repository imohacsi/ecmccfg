#-d /**
#-d   \brief hardware script for EL7041-0052-Motor-Nanotec-SCA5618X2804-A2
#-d   \details Parmetrization of EL7041-0052 for motor Nanotec SCA5618X2804-A2
#-d   \author Niko Kivel
#-d   \file
#-d */

#- Set max current to 2800 mA
ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0x1,2800,2)"

#- Reduced current 1400 mA
ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0x2,1400,2)"

#- Nominal voltage 48 V (unit 1 mV)
ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0x3,48000,2)"

#- Coil resistance 0.78 Ohm (unit 10 mOhm)
ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0x4,78,2)"

#- Motor full steps count 200
ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0x6,200,2)"
