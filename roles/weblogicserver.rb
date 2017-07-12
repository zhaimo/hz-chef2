name "WebLogicServer"
description "A role to configure our apache servers"
run_list "recipe[chef-client]", "recipe[fmw_jdk::install]"
default_attributes(
  "fmw" => {
    "java_home_dir" => "/usr/java/jdk1.7.0_75"
  },
    "fmw_jdk" => {
      "source_file" => "/tmp/jdk-7u75-linux-x64.rpm"
    }
)
