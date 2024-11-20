#project_id  = "seed-440521"

# ************************************* Level-1 Organization Configuration *********************************** #


# ********************************* End Level-1 Organization Configuration *********************************** #

Level_2_BU_Folders = {
# *************************************** Level-2 Folders Configuration ************************************** #

# .......... Business Units (BU) Folders Configuration ......... #
  "gcp-boot-poc" = {
    delete              = false,
    parent              = "organizations/965415543182",
    tags                = {},
    deletion_protection = false
  },
   "gcp-shrd-poc" = {
    delete              = false,
    parent              = "organizations/965415543182",
    tags                = {},
    deletion_protection = false
  },
  "gcp-us-poc" = {
    delete              = false,
    parent              = "organizations/965415543182",
    tags                = {},
    deletion_protection = false
  },
  "gcp-eu-poc" = {
    delete              = false,
    parent              = "organizations/965415543182",
    tags                = {},
    deletion_protection = false
  },
}

# **************************************** END Level-2 Folder Configurations **********************************


# *************************************** Level-3 Folders Configuration ************************************** #

#............... Bootstrap Folders Configuration ...............#

Level_3_boot_BU_Folders = {  
  "gcp-boot-us-poc" = {
    delete = false,
    tags  = {},
    deletion_protection = false
  },
}
#*********************************** END Bootstrap ******************************************#

#*********************************** Shared Infra  **************************************# 

/* Level_3_shrd_BU_Folders = {  
  "gcp-shrd-infra-us" = {
    delete = false,
    tags  = {},
    deletion_protection = false
    
  },
} */


#********************************** END Shared Infra **************************************# 

#********************************** North America **************************************# 

Level_3_us_BU_Folders = {  
  "gcp-shrd-infra-us-poc" = {
    delete = false,
    tags  = {},
    deletion_protection = false
    
  },
  "gcp-dev-us-poc" = {
    delete = false,
    tags  = {},
    deletion_protection = false
    
  },
}

#********************************** END North America **************************************# 

#********************************** EU Folder **************************************# 

/* Level_3_eu_BU_Folders {
  "gcp-shrd-infra-us" = {
    delete = false,
    tags  = {},
    deletion_protection = false 
  },
} */

#********************************** END EU Folder **************************************# 

# ***************************** END Level-3 Folder Configurations ***********************************

# ************************************* Level 4 Folders ********************************************* #

#********************************** North America Dev Folders **************************************# 

Level_4_us_dev_BU_Folders = {
  "gcp-d-02e" = {
    delete = false,
    tags  = {},
    deletion_protection = false 
  },
  "gcp-d-buapp-0q1" = {
    delete = false,
    tags  = {},
    deletion_protection = false 
  },
}

#********************************** End North America Dev Folders **************************************#

# ************************************* End Level 4 Folders ********************************************* #
