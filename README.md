# Pantheon Polkit Agent
[![Translation status](https://l10n.elementary.io/widgets/desktop/pantheon-agent-polkit/svg-badge.svg)](https://l10n.elementary.io/projects/desktop/pantheon-agent-polkit/?utm_source=widget)

## Building, Testing, and Installation

You'll need the following dependencies:
* libgtk-3-dev
* libpolkit-gobject-1-dev
* libpolkit-agent-1-dev
* meson
* valac (>= 0.34.1)

Run `meson` to configure the build environment and then `ninja` to build

    meson build --prefix=/usr
    cd build
    ninja

To install, use `ninja install`

    sudo ninja install
