# # # Distribution Statement A. Approved for public release. Distribution unlimited.
# # #
# # # Author:
# # # Naval Research Laboratory, Marine Meteorology Division
# # #
# # # This program is free software: you can redistribute it and/or modify it under
# # # the terms of the NRLMMD License included with this program. This program is
# # # distributed WITHOUT ANY WARRANTY; without even the implied warranty of
# # # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the included license
# # # for more details. If you did not receive the license, for more information see:
# # # https://github.com/U-S-NRL-Marine-Meteorology-Division/

#!/bin/bash

# NOTE: Ideally these tgz files would uncompress so the directory name matches the tgz filename.
# If that were the case, then "uncompress_test_data.sh" would recognize the data has already been uncompressed, and
# not attempt to uncompress again.

# Not going to update for now, unless it becomes an issue with repeatedly re-uncompressing the same VIIRS datasets
# over and over again (since it works just fine at actually uncompressing).

testdata_dir=`dirname $0`

uncompress_script=$GEOIPS_PACKAGES_DIR/geoips/tests/utils/uncompress_test_data.sh
data_path=$testdata_dir/data

$uncompress_script $data_path tgz
