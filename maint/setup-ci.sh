#!/usr/bin/env bash

set -ex -o pipefail

curl -fsSL https://raw.githubusercontent.com/skaji/cpm/main/cpm | \
    perl - install \
    Dist::Zilla Dist::Zilla::PluginBundle::Milla \
    Dist::Zilla::Plugin::Run::BeforeBuild \
    App::FatPacker \
    Perl::Version
