#!/usr/bin/env bash

# SPDX-License-Identifier: CC-BY-4.0

# Copyright © 2020 HolySpicoli (https://github.com/HolySpicoli/).
# Licensed under the Creative Commons Attribution 4.0 International License (https://creativecommons.org/licenses/by/4.0/).
# See LICENSE.md (https://github.com/HolySpicoli/WikimediaCommonsFile-Saskatchewan_COVID-19_Infection_Rates.svg/blob/master/LICENSE.md).

# Get the path to this script, which is in the same directory as the working files.
builddir=$(dirname "$0")

# Use 'xmllint' (http://xmlsoft.org/xmllint.html) to perform canonicalization (C14N) on the SVG file generated by QGIS, for better version control.
xmllint --c14n "$builddir"/Saskatchewan_COVID-19_Infection_Rates.qgis.svg > "$builddir"/Saskatchewan_COVID-19_Infection_Rates.qgis.c14n.svg
