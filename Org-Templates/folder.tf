# *************************************** Level-2 Folders Configuration ************************************** #      

module "Level_2_BU_Folders" {
  for_each     = {  
    for k, v in try(var.Level_2_BU_Folders,{}): k => v if v.delete != true            
  }     
  source        =  "git::https://[PASSWORD]@github.com/Quest-Devops/IAC-Organization-Modules.git//terraform-google-cloud-folder?ref=v1.0.0"       
  folder_name         = each.key
  tags                = each.value.tags
  deletion_protection = each.value.deletion_protection
  parent              = each.value.parent
}

# *********************************** End Level-2 Folders Configuration ************************************** #

# *************************************** Level-3 Folders Configuration ************************************** 

module "Level_3_boot_BU_Folders" {
  for_each     = {
    for k, v in try(var.Level_3_boot_BU_Folders,{}): k => v if v.delete != true
  }

  source        =  "git::https://[PASSWORD]@github.com/Quest-Devops/IAC-Organization-Modules.git//terraform-google-cloud-folder?ref=v1.0.0"
  folder_name  = each.key
  parent       = module.Level_2_BU_Folders["gcp-boot-poc"].folder_details.id
  tags         = each.value.tags
  deletion_protection = each.value.deletion_protection
  depends_on   = [ module.Level_2_BU_Folders ]
}

/* module "Level_3_shrd_BU_Folders" {
  for_each     = {
    for k, v in try(var.Level_3_shrd_BU_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://github.com/Karandhawariyaji/QUEST_Module.git?ref=v0.0.3"
  folder_name  = each.key
  parent       = module.Level_2_BU_Folders["gcp-shrd"].folder_details.id
  tags         = each.value.tags
  deletion_protection = each.value.deletion_protection
  depends_on   = [ module.Level_2_BU_Folders ]
} */
module "Level_3_us_BU_Folders" {
  for_each     = {
    for k, v in try(var.Level_3_us_BU_Folders,{}): k => v if v.delete != true
  }
  source        =  "git::https://[PASSWORD]@github.com/Quest-Devops/IAC-Organization-Modules.git//terraform-google-cloud-folder?ref=v1.0.0"  
  folder_name  = each.key
  parent       = module.Level_2_BU_Folders["gcp-us-poc"].folder_details.id
  tags         = each.value.tags
  deletion_protection = each.value.deletion_protection
  depends_on   = [ module.Level_2_BU_Folders ]
}
/* module "Level_3_eu_BU_Folders" {
  for_each     = {
    for k, v in try(var.Level_3_eu_BU_Folders,{}): k => v if v.delete != true
  }
  source       ="git::https://github.com/Karandhawariyaji/QUEST_Module.git?ref=v0.0.3" 
  folder_name  = each.key
  parent       = module.Level_2_BU_Folders["gcp-eu"].folder_details.id
  tags         = each.value.tags
  deletion_protection = each.value.deletion_protection
  depends_on   = [ module.Level_2_BU_Folders ]
} */


# **************************************** END Level-3 Configurations *****************************************

# **************************************** Level-4 Configurations *****************************************

module "Level_4_us_dev_BU_Folders" {
  for_each     = {
    for k, v in try(var.Level_4_us_dev_BU_Folders,{}): k => v if v.delete != true
  }
  source        =  "git::https://[PASSWORD]@github.com/Quest-Devops/IAC-Organization-Modules.git//terraform-google-cloud-folder?ref=v1.0.0" 
  folder_name  = each.key
  parent       = module.Level_3_us_BU_Folders["gcp-dev-us-poc"].folder_details.id
  tags         = each.value.tags
  deletion_protection = each.value.deletion_protection
  depends_on   = [ module.Level_3_us_BU_Folders ]
}

# **************************************** END Level-4 Configurations *****************************************
