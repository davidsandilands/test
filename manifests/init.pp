# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include test
class test (
  Hash $createfile
){
create_resources(file, $createfile)

 class {'lvm':
      noop             => true,
      volume_groups    => {
        'vg_data_gti_apps' => {
          physical_volumes => [ '/dev/sda3' ],
          logical_volumes  => {
            'lv_cognos'    => {
              'size'              => '5G',
              'mountpath'         => '/cognos',
              'mountpath_require' => true,
            },
          },
        },
      },
    }
}
