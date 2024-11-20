

# *************************************** Level-2 Folders Configuration ************************************** #
variable "Level_2_BU_Folders" {
    type       = any 
    sensitive   = false
}
# *********************************** End Level-2 Folders Configuration ************************************** #


# *************************************** Level-3 Folders Configuration ************************************** #
variable "Level_3_boot_BU_Folders" {
    type       = any 
    sensitive   = false
}
# variable "Level_3_shrd_BU_Folders" {
#     sensitive   = false
# }
variable "Level_3_us_BU_Folders" {
    type       = any
    sensitive   = false
}
# variable "Level_3_eu_BU_Folders" {
#     sensitive   = false
# }
# *********************************** End Level-3 Folders Configuration ************************************** #

#************************************ Level 4 Folders Configurations ******************************************* #

variable "Level_4_us_dev_BU_Folders" {
    type       = any 
    sensitive   = false
}

#************************************ End Level 4 Folders Configurations ******************************************* #


# *********************************** End Level-5 Folders Configuration ************************************** # 

#........................................ Organisation Policy ..........................................#
variable "org_policy" {
    type     = any
    sensitive = false
}

