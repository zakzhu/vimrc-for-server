# Vimrc-For-Server

<!-- [![build status][shield-build]][info-build] -->
<!-- [![gitter room][shield-gitter]][info-gitter] -->

[![license][shield-license]][info-license]
[![release][shield-release]][info-release]
[![prs welcome][shield-prs]][info-prs]

A Simple and Practical VimRC script for VIM on Servers.

[TOC]

## Features

The main features:

- backup in /tmp/vimbak
- smart indent
- graceful status line
- highlight parentheses
- highlight number and cursor line
- vertical bar cursor at insert mode
- show title
- turn off all bells
- friendly search
- auto pair parentheses when write
- set file header (support bash, lua, perl, python, ruby)

## Screenshot

![](https://gitee.com/zakzhu/md-images/raw/master/vimrc-for-server/screenshot_vimrc_for_server.png)

## Requirements

- **Platforms:**
  - CentOS-7
  - CentOS-8
  - Fedora
  - Ubuntu
- **Dependencies:**
  - vim-enhanced

## Installation

```bash
yum install vim-enhanced -y
```

```bash
cp dot_vimrc.vim /etc/skel/.vimrc
cp dot_vimrc.vim ~/.vimrc
```

```bash
mkdir /tmp/vimbak
chmod 1777 /tmp/vimbak
```

## Thanks

The following excellent people helped massively:

- [Rowan Manning](https://rowanmanning.com)
- [Sigal](https://github.com/Sigal-GitHub)
- [yuri](https://github.com/LEUNGUU)
- [wklken](https://github.com/wklken)
- [zyprex](https://github.com/zyprex)

## License

Vimrc-For-Server is licensed under the [BSD-3-Clause][info-license] license. Copyright &copy; 2020, Zak Zhu

[info-build]: https://travis-ci.org/github/zakzhu/vimrc-for-server
[info-contribute]: CONTRIBUTING.md
[info-faq]: FAQ.md
[info-gitter]: https://gitter.im/zakzhu/vimrc-for-server
[info-license]: LICENSE
[info-release]: https://github.com/zakzhu/vimrc-for-server/releases
[info-prs]: https://github.com/zakzhu/vimrc-for-server/pulls
[shield-build]: https://img.shields.io/travis/zakzhu/vimrc-for-server
[shield-gitter]: https://img.shields.io/gitter/room/zakzhu/vimrc-for-server
[shield-license]: https://img.shields.io/github/license/zakzhu/vimrc-for-server
[shield-release]: https://img.shields.io/github/v/release/zakzhu/vimrc-for-server
[shield-prs]: https://img.shields.io/badge/PRs-welcome-brightgreen
