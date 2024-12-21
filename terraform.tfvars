enable_telemetry = false

vnets = {
  vnet1 = {
    id = "vnet1_id"
    subnet_names = ["workload", "PEPoints"]
  }
  vnet2 = {
    id = "vnet2_id"
    subnet_names = ["workload", "PEPoints"]
  }
}
location = "uksouth"