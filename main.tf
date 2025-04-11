terraform {
  cloud {
    organization = "mgamini"
    workspaces {
      name = "minikube-test"
    }
  }
}

provider "kubernetes" {
  host = "https://192.168.49.2:8443"
  insecure = true
  client_certificate = <<-EOT
-----BEGIN CERTIFICATE-----
MIIDITCCAgmgAwIBAgIBAjANBgkqhkiG9w0BAQsFADAVMRMwEQYDVQQDEwptaW5p
a3ViZUNBMB4XDTI1MDQxMDAwMDExOFoXDTI4MDQxMDAwMDExOFowMTEXMBUGA1UE
ChMOc3lzdGVtOm1hc3RlcnMxFjAUBgNVBAMTDW1pbmlrdWJlLXVzZXIwggEiMA0G
CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDOmIg2p4dKWHy6PNjkChNIxfIDkvTS
avhtH2dW8Lx3DdlHaT1g6VXyA6pczZn49jNaD4wA93Y+JEg3jTlZXrXCeCxs2N31
bsOsPzg9pwtOxho8fRIoC7+w5nTqls/Jb4erws5Fk9X1GXGrPXsL5FCI2oX948T3
uwJOAIRS1wMJQS5d2Tq0Jg/Q82G4jvAY9hz1py+6Q52PGx8aei0d/WkiAvtzFWri
ffc9cgIyMvYdaGm16rStdgXkRwKS/NbaaxCiKs4D49bvpiiZ/O3VPeCo4/ZtEJpP
CZWGPyksAy4x4IIQWJht8sr0l6f7GM29v6D1WGyxP+ZHYBaH6ap/SDXTAgMBAAGj
YDBeMA4GA1UdDwEB/wQEAwIFoDAdBgNVHSUEFjAUBggrBgEFBQcDAQYIKwYBBQUH
AwIwDAYDVR0TAQH/BAIwADAfBgNVHSMEGDAWgBS4Fj0vhKsEzYXaAORZAMIxTWAW
wjANBgkqhkiG9w0BAQsFAAOCAQEAb9IvYGyX36s2xTQacW4HYwRPLAsnhke13I6s
9uMyMuXz4TX+SdLo4JqEJFNm9/BI1aTf35jB2cDjEEvdDsSWONAoss8r/JGLJMjF
my1mfvxjgkjN25s0K4P9pWkmq+a4BS/I3dHReOP2+eB7eCAai2nFGer2PSzxHmjP
p2KyZvis3oPb7ALI65Dg2KqEsrIeDXg4+IiTi7cTfpM2P7XlWyHaVCai+pMBKr10
SkDjvf0h8g9wgshtOzzH4Fp+miCyO4/wLy543xm+dI8riEiTfsmIl5GHy3ha5RJs
jurKEheC7irVvR4aJgjWrvQVR1VSzdvy9z/c26DwqaGy4UfWDw==
-----END CERTIFICATE-----
EOT

  client_key = <<-EOT
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAzpiINqeHSlh8ujzY5AoTSMXyA5L00mr4bR9nVvC8dw3ZR2k9
YOlV8gOqXM2Z+PYzWg+MAPd2PiRIN405WV61wngsbNjd9W7DrD84PacLTsYaPH0S
KAu/sOZ06pbPyW+Hq8LORZPVdRlxqz17C+RQiNqF/ePE97sCTgCEUtcDCUEuXdk6
tCYP0PNhuI7wGPYc9acvukOdjxsfGnotHf1pIgL7cxVq4n33PXICMjL2HWhpteq0
rXYF5EcCkvzW2msQoirOA+PW76Yomfzt1T3gqOP2bRCaTwmVhj8pLAMuMeCCEFiY
bfLK9Jen+xjNvb+g9VhssT/mR2AWh+mqf0g10wIDAQABAoIBAQCiDZWzQV/nGlfk
AjyjS5/q0pJO6WQu9YeemSaHVNiQjoVj9ZIWxZEMAIIOv5vKZNzNBSrtyy6t+enH
4XgduSPbwkYer1IT5emI4CIugixlgxErZ3Ppg6W+jlcheGDPAjQqr+j7PMZ0tpuq
FdTB9DqTzs2R5KspI0DgjJk/Hbcc9uImc4hwQkKdgOYqWQCY4C1AWLLqJINp1Sr6
XiGZpaemLp11A/qoo925xeaM/UgFZiFF9OJiqN1SPmRkZ+8hKUtbw0YSIQjlsjMz
zcOdXSLriODTZChMgJ3PeU5CaReevdqUt364mAVNWhx8VoPtxGaBcQr4yxV6cc8S
kjIU6zFxAoGBAONBXqt6qtabwHizSiXhRlSze18KE+2mYmau+CWFIjEU6rE6JGhc
iKYhEXcZbP9jl/eZqmWl6JQ0qI2IqprXX9qPgQYkNkTUmH1Ah+oRGtG2VueAHC0T
BTCmMcA26IlBGcGJL3UmhYx0pBfP8ip8BLkKgwWOp95p6lABll1j5RxbAoGBAOi6
MpseFCGCgjx2RWC4O6qEH+/ZGUZk2Mlkxkx/5+qHxw4fTEXDaYUsE1V5X6MuIhos
6b3yxnf4Vh8YA6T8rCSabl8szj+cTOTr8eww2okBcRrBpR0o7gSYEV2Ga3jsoDOI
/3WJN4/LVacDkiljV7IXOfRLlTc7HrW8Ve/xbOXpAoGAa3CUWW39JsksDeR1wcLn
hVP1l9Ej6s8m5nUCTHrM13eUHYXngI9+60vm/e+/YF6tkhnMPZJaivb6WS+ruNjq
MGJ4FXc5UQFRtqWznC3KCCu0mm4u5ACCC6YHD2DmPz3P93fsP+6eZPEgQ0HEs+E+
Ol2F5DK1mqloZbraY/y+bNECgYAdQBHONziWgZ221bKglmdBZjvRXHr1wwUQQu89
fDH84zXci4h9mDLx/vkrHAcuLkUw/wYdzp6tQ3QnklAa83r7WsGWir4ddpqfhxwv
8G/3GkxJ7Z7ADH3l6+r600M8vpjgAU8CSc3G7+qDBErhks/Z3Vt2Xe2SNIcGlnZC
oxhpyQKBgQC9e7pinGbkoMQlbMpT+jM2PuZLLPOM75QJEwVM6G8xko4rV+r6vNkd
son3SYvK+TBXV+VvWcgL8GWbp22B03IBWmiYqV5Ir/pttvsN9y1npMcvLzsftAC2
asi6idUqtp+0dYRHs4XcBnSJyB9FLapkeF2XFowXLeOlT2bfmbarBw==
-----END RSA PRIVATE KEY-----
EOT
}

resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "nginx-deployment"
    labels = {
      app = "nginx"
    }
  }
  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "nginx"
      }
    }
    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }
      spec {
        container {
          image = "nginx:latest"
          name  = "nginx"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "nginx" {
  metadata {
    name = "nginx-service"
  }
  spec {
    selector = {
      app = "nginx"
    }
    port {
      port        = 80
      target_port = 80
    }
    type = "ClusterIP"
  }
}