
packages {
  development = ["coreutils-full@9.5", "bash@5.2.15", "go@1.22.3", "gotools@0.18.0", "delve@1.22.1"]
  runtime     = ["cacert@3.95"]
}

oci "pkgs" {
  name          = "sp3ar007/golang-proj:base"
  layers        = ["split(packages.runtime)", "split(packages.dev)"]
  isBase        = true
  cmd           = []
  entrypoint    = []
  envVars       = []
  exposedPorts  = []
  importConfigs = []
}
