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


# v1.6.0: 2022-12-01, open source release updates
## GEOIPS#119: 2022-12-01, update README, uncompress script
### Documentation
#### README.md
* Remove explicit installation steps, link to geoips
### Test Repo Updates
* Standardize uncompress_test_data.sh


# v1.5.3: 2022-11-07, add new edge cases, update uncompress test data script

## GEOIPS#108: 2022-10-31, Update uncompress_test_data.sh script
* Update uncompress_test_data.sh to use shared $GEOIPS/tests/utils/uncompress_test_data.sh
    * NOTE: Ideally these tgz files would uncompress so the directory name matches the tgz filename.
      If that were the case, then "uncompress_test_data.sh" would recognize the data has already been uncompressed, and
      not attempt to uncompress again.
    * Not going to update for now, unless it becomes an issue with repeatedly re-uncompressing the same VIIRS datasets
      over and over again (since it works just fine at actually uncompressing).
* Remove recompress_test_data.sh script
```
modified: uncompress_test_data.sh
modified: recompress_test_data.sh
```

## GEOIPS#113: 2022-10-27, VIIRS lat/lon variables may contain unmasked fill values
### Test Repo Updates
* **New test data for VIIRS JPSS unmasked fill values edge case**
    * data/jpss_unmasked_latlon_fillvals_20221020_0436.tgz
    * data/jpss_unmasked_latlon_fillvals_20221020_0442.tgz

## GEOIPS#104: 2022-10-21, VIIRS reader bug-fix for terminator case

### Test Repo Updates
* **data/jpss_terminator_20220801_1518.tgz**
    * JPSS granules with all potential bands
* **data/jpss_terminator_20220801_1524.tgz**
    * JPSS granules without solar reflective bands

# v1.5.1: 2022-07-14, geoips2->geoips, consolidate test outputs, update compress scripts

### Refactor
* **File modifications**
    * Update all instances of 'geoips2' with 'geoips'
    * Update all instances of 'GEOIPS2' with 'GEOIPS'
* **Test outputs**
    * Remove all test outputs from test data repo (move to source repos)
    * Add bdeck file for reference

### Documentation Updates
* Update \*.md Distro statement headers to use 4 spaces prefix rather than ### (formatting improvement)
* **README.md**
    * Update to point directly to VIIRS single\_source test scripts

### Bug fixes
* **recompress test data script**
    * Remove uncompressed data directories instead of compressing individual input files


# v1.4.5: 2022-03-18, update uncompress_test_data.sh script

### Refactor
* Do not include explicit paths for uncompressing tgz, list $data_path/\*.tgz


# v1.4.3: 2022-02-17, replace individual gz data files with tgz, annotated->clean imagery, clarify day/moon/clearnight

### Test Repo Updates
    * Removed IR-BD and Visible daytime imagery test outputs (only tested in recenter_tc and mtif now)
    * Added Gsh112022.dat gdeck file for clear night test case.
    * jpss-1 -> noaa-20, annotated->clean
        * VIIRS daytime test outputs
        * VIIRS moonlit night test outputs
    * Change daytime annotated imagery outputs to clean imagery for maintainability
        * Infrared-Gray
        * Infrared
        * Night-Vis-IR
    * Move \*\_image outputs to \*\_day
    * Move \*\_night outputs to \*\_moon
    * Create \*\_clearnight outputs for Night Vis geoips1 and geoips products

### Refactor
    * Replaced individually gzipped data files with tgz data files with informative names
        (clear night, moonlit night, and daytime test cases)


# v1.4.1: 2022-01-21, initial commit of night time Night Visible products - needs some work

### Major New Functionality
    * Added incorrectly tuned night time Night Visible products, as a placeholder to remind us that it is not right.
    * Added uncompress_test_data.sh and recompress_test_data.sh scripts
        * Required for automated installation and testing


# v1.3.0: 2021-11-25, atcf->tc, update paths

### Breaking Test Repo Updates
    * Update TC YAML metadata outputs
        * update output paths to geoips_outdirs/preprocessed/tcwww
        * add sector_type: tc


# v1.2.4: 2021-11-12, original_source_filenames, simplify README

### Breaking Test Repo Updates
    * Updated all metadata YAML and netcdf output files with list of original_source_filenames
        rather than single original_source_filename

### Improvements
    * Simplify README installation and test instructions


# v1.2.2: 2021-10-25, slightly modified TC title times due to updated sector padding size

### Breaking Test Repo Updates
    * Updated TC sector padding from 2.5x to 1.5x, which resulted in very slightly modified TC title times
        * Data/imagery completely unchanged, only a slight change to TC title time 


# v1.2.1: Updated matplotlib/cartopy versions, removed automatic TC recentering for all products

### Breaking Test Repo Updates
    * Updated cartopy to 0.20.0 and matplotlib to v3.4.3
        * test repo outputs incompatible with matplotlib < 3.4.0 and cartopy < 0.19.0
        * Older versions have figures that are very slightly shifted from later versions
        * Exclusively a qualitative difference, but it *does* cause the test comparisons to fail
    * No longer recentering all TC outputs by default
        * standard outputs are *not* recentered as of 1.2.1 - test recentering separately from other functionality


# v1.2.0: Major backwards incompatible update

###  Major New Functionality:
    * Exhaustive test scripts with final return value of 0 for successful completion of all functionality
    * Initial geotiff output support
    * Initial full disk output support
    * Night Visible products
    * Recentering / sectoring updates
 
###  Improvements
    * YAML based product specifications (references colormaps, algorithms,
      interpolation routines, coverage checks, etc)
 
###  Bug fixes
    * Resolved sectoring issue, allowing complete center coverage
        * Previously when sectoring based on min/max lat/lon, any values outside the explicit
          requested values would be masked, causing masked data on non-square datasets when 
          good data was actually available for the entire requested region. Only drop rows outside
          requested range, do not mask data.

GEOIPS-71 GEOIPS-6
