# org_policy.tfvarsfalse
org_policy                          = {

  "ainotebooks.restrictPublicIp"    = {
    delete                          = false
    org_id                          = "965415543182"
    version                         = 0
    boolean_policy                  = [
        {
            enforced                = true
        }
    ]
    list_policy                     = [
        /* {
            allow                   = [
                {
                    all             = false
                    values          = [""]
                }
            ]
            deny                    = [
                {
                    all             = true
                    values          = [""]
                }
            ]
            suggested_value         = null
            inherit_from_parent     = null
        } */
    ]
    restore_policy                  = [
        /* {
            default                 = false
        } */
    ]
  },
}
