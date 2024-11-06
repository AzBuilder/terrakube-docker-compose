terraform {
  cloud {
    organization = "simple"
    hostname = "8080-azbuilder-terrakube-gtre69uxgz6.ws-us116.gitpod.io"

    workspaces {
      name = "terrakube-docker-compose"
    }
  }
}