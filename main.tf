data terraform_remote_state "certificates" {
  backend = "remote" 

  config = {
    organization = "grantorchard"

    workspaces = {
      name = "hashi-demo-certificate"
    }
  }
}
