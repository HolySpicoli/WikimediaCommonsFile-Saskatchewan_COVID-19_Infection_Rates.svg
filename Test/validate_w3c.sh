#!/usr/bin/env bash
# SPDX-License-Identifier: CC-BY-4.0

# Copyright © 2020 HolySpicoli (https://github.com/HolySpicoli/).
# Licensed under the Creative Commons Attribution 4.0 International License (https://creativecommons.org/licenses/by/4.0/).
# See LICENSE.md (https://github.com/HolySpicoli/WikimediaCommonsFile-Saskatchewan_COVID-19_Infection_Rates.svg/blob/master/LICENSE.md).

# Change to the release directory.
cd "$(dirname "$0")"/../Release

# Validate the final SVG file using the W3C validator web service.
# See https://github.com/validator/validator/wiki/Service-%C2%BB-Input-%C2%BB-POST-body
curl --header "Content-Type: image/svg+xml; charset=utf-8" \
     --data-binary @Saskatchewan_COVID-19_Infection_Rates.svg \
     https://validator.w3.org/nu/?out=text

# Output should be as follows:
# Info: Using the preset for SVG 1.1 + URL + HTML + MathML 3.0 based on the root namespace.
# The document validates according to the specified schema(s).
