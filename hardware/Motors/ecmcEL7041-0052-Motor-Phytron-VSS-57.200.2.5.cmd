#-d /**
#-d   \brief hardware script for EL7041-0052-Motor-Phytron-VSS-57.200.2.5
#-d   \details Parmetrization of EL7041-0052 for motor Phytron VSS 57.200.2.5
#-d   \author Carlos Doro Neto
#-d   \file
#-d */

#- Set max current to 2500 mA
ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0x1,2500,2)"

#- Reduced current 500 mA
ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0x2,500,2)"

#- Nominal voltage 48000 mV
ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0x3,48000,2)"

#- Coil resistance 80 x 10⁻²Ω
ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0x4,80,2)"

#- Motor steps per revoution 200
ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0x6,200,2)"

#- Coil inductance 290 x 10⁻⁵H - NOT USED FOR EL7041
#ecmcConfigOrDie "Cfg.EcAddSdo(${ECMC_EC_SLAVE_NUM},0x8010,0xA,290,2)"
