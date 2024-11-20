# *************************************** Level-2 Folders_Details Configuration ************************************** #
output "Level_2_BU_Folders_Details" {
    sensitive   = false
    value       = module.Level_2_BU_Folders
}
# *********************************** End Level-2 Folders_Details Configuration ************************************** #

output "Level_3_boot_BU_Folders" {
    sensitive   = false
    value       = module.Level_3_boot_BU_Folders
}
output "Level_3_us_BU_Folders" {
    sensitive   = false
    value       = module.Level_3_us_BU_Folders
}
output "Level_4_us_dev_BU_Folders" {
    sensitive   = false
    value       = module.Level_4_us_dev_BU_Folders
}

# *************************************** Level-3 Folders_Details Configuration ************************************** #
