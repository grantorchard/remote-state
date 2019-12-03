data terraform_remote_state "certificates" {
  backend = "remote" 

  config = {
    organization = "grantorchard"

    workspaces = {
      name = "hashi-demo-certificate"
    }
  }
}

resource null_resource "echo" {
  provisioner "local-exec" {
    inline = [
      "echo ${data.terraform_remote_state.certificates.outputs.vault_certificate}"
    ]

output "vault_certificate" {
  value = data.terraform_remote_state.certificates.outputs.vault_certificate
  }
  
