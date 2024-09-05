terraform {
  required_providers {
    wiz = {
      version = "~> 1.11"
      source  = "tf.app.wiz.io/wizsec/wiz"
    }
  }
}
# Create a SAML SSO IdP
resource "wiz_saml_idp" "saml_sso_okta" {
  name                         = "37928-SSO-Test-TF"
  issuer_url                   = "https://www.okta.com/exk85r123456123456x7"
  login_url                    = "https://example.okta.com/app/oktaapp1/exk85r123456123456x7/sso/saml"
  logout_url                   = "https://example.okta.com/app/oktaapp1/exk85r123456123456x7/slo/saml"
  use_provider_managed_roles   = true
  allow_manual_role_override   = false
  merge_groups_mapping_by_role = false
  # certificate                  = file("pub_cert.pem")
  certificate                  = <<EOT
-----BEGIN CERTIFICATE-----
MIIDBjCCAe6gAwIBAgIEYJjLHDANBgkqhkiG9w0BAQsFADBFMRYwFAYDVQQDDA1h
bWF6b25hd3MuY29tMQ0wCwYDVQQLDARJREFTMQ8wDQYDVQQKDAZBbWF6b24xCzAJ
BgNVBAYTAlVTMB4XDTI0MDYxMDIwMzMxMVoXDTI5MDYxMDIwMzMxMVowRTEWMBQG
A1UEAwwNYW1hem9uYXdzLmNvbTENMAsGA1UECwwESURBUzEPMA0GA1UECgwGQW1h
em9uMQswCQYDVQQGEwJVUzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
AKmugxEXiCOb9pMmSnWYigkBjxhs54VjcK2WFgvvzBFebk3Xn3y6ezcxT+Ko92wd
Ri1cRcKhnSrDjUZPQgv3xCBdWlIS6v7kEErJpOQ9ih6TT6a0S4CWCzeYytZBSmte
rZoA8pQkIZfU+i90m3fmWUlYa2fgczOoZlp3QrB/fh/BdZXlteUHrKJXgwG9O18Y
7T0Op8GWd8KFURuNEEyHnM2BGZxhp9TbCz5WwkFgKltypgPOll18y7jVNfecwo4y
abLdLLuM1kSlYTl6lyeTzrTY540X9eYtjmYnugaPXIF9IQeVmG1wviboAV/H6Swr
v9dL+dSHKjQGLajboi98EwUCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAR3CBlyez
LphvkZ6ZdsuPPKAwVPjArBC62pTLrgcSDeR6rEZzXq48xF/4xqvvxpeeGCQFqQUI
jViOHTjNfGvd6rd8Rj1SIXdss3nauKbEyMIfm+wUU9R3e3E/xRo2xOStjnYqiozd
XmCC5HJDg421oN7lVzrTvTlG7iDsJxPdT63feXD6TIZlOBNx2CVmfUBGw0UaKmMD
vg2qlGQ+DmrZKLi4Y0qlmUCArJhKWyUNp/zENqw6T62PudqV1oDbfEruANWzeQ87
Wu6kBLoNEIaSh3MGHn3rjycnK0U2ovQ4A7ws0qWZJ5xMlBBoJEx1hd5snpCpFpDb
46Qn00uIEX+okQ==
-----END CERTIFICATE-----
EOT
}
