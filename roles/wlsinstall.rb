name "wlsinstall"
description "A role to install wls server"
run_list "recipe[chef-client]", "recipe[fmw_jdk::install]","recipe[fmw_wls::setup]", "recipe[fmw_wls::install]"
default_attributes(
  "fmw" => {
    "java_home_dir" => "/usr/java/jdk1.7.0_75",
    "middleware_home_dir": "/opt/ew/dcf/fsfn/fsfnst01"
  },
    "fmw_jdk" => {
      "source_file" => "/tmp/jdk-7u75-linux-x64.rpm"
    },
    "fmw_wls" => {
      "source_file" => "/tmp/fmw_12.2.1.2.0_wls.jar"
    }
)
