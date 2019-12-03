data terraform_remote_state "certificates" {
  backend = "remote" 

  config = {
    organization = "grantorchard"

    workspaces = {
      name = "hashi-demo-certificate"
    }
  }
}

output "vault_certificate" {
  value = data.terraform_remote_state.aws_acm_certificate.vault.arn
  }
  
