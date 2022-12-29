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


VIIRS Test Datasets
==========================

This repository contains test datasets for use with the Geolocated Information Processing System.

Please see the 
[GeoIPS Documentation](https://github.com/NRLMMD-GEOIPS/geoips/blob/main/README.md)
for more information on the GeoIPS plugin architecture and base infrastructure.

Sample Dataset Sources
-----------------------

This repository contains test datasets from the Visible Infrared Imaging Radiometer Suite (VIIRS)
on board the NOAA-20 and JPSS-1 satellites.
https://www.jpss.noaa.gov/viirs.html

We acknowledge the use of data and/or imagery from NASA's
Land, Atmosphere Near real-time Capability for EOS (LANCE) system
(https://earthdata.nasa.gov/lance),
part of NASA's Earth Observing System Data and Information System (EOSDIS).


System Requirements
---------------------

* geoips >= 1.5.4
* Test data repos contained in $GEOIPS_TESTDATA_DIR for tests to pass.


IF REQUIRED: Install base geoips package
------------------------------------------------------------
SKIP IF YOU HAVE ALREADY INSTALLED BASE GEOIPS ENVIRONMENT 

If GeoIPS Base is not yet installed, follow the
[installation instructions](https://github.com/NRLMMD-GEOIPS/geoips/blob/main/docs/installation.rst)
within the geoips source repo documentation.

Obtain test repo
----------------
```bash
    # Assuming you followed the fully supported installation,
    # using $GEOIPS_TESTDATA_DIR and $GEOIPS_CONFIG_FILE:
    source $GEOIPS_CONFIG_FILE
    git clone $GEOIPS_REPO_URL/test_data_viirs $GEOIPS_TESTDATA_DIR/test_data_viirs
    $GEOIPS_TESTDATA_DIR/test_data_viirs/uncompress_test_data.sh
```

Run sample test scripts
-----------------------
```bash

    # Assuming you followed the fully supported installation,
    # using $GEOIPS_TESTDATA_DIR, $GEOIPS_PACKAGES_DIR, and $GEOIPS_CONFIG_FILE:
    source $GEOIPS_CONFIG_FILE

    # GeoIPS-based test scripts should successfully return 0 if everything is set up properly.
    $GEOIPS_PACKAGES_DIR/geoips/tests/scripts/viirsclearnight.Night-Vis-IR-GeoIPS1.unprojected_image.sh
    $GEOIPS_PACKAGES_DIR/geoips/tests/scripts/viirsday.tc.Night-Vis-IR.imagery_annotated.sh
    $GEOIPS_PACKAGES_DIR/geoips/tests/scripts/viirsmoon.tc.Night-Vis-GeoIPS1.imagery_clean.sh
```
