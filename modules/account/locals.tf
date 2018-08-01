locals {
  name_prefix = "${join("-",
                    list(
                      var.common_tags["organization"],
                      var.common_tags["application"],
                      var.common_tags["stage"],
                      var.common_tags["component"],
                      var.common_tags["service"],
                      var.common_tags["container"]
                    )
                 )}"
}
