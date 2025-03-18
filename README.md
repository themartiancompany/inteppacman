[comment]: <> (SPDX-License-Identifier: AGPL-3.0)

[comment]: <> (-------------------------------------------------------------)
[comment]: <> (Copyright © 2024, 2025  Pellegrino Prevete)
[comment]: <> (All rights reserved)
[comment]: <> (-------------------------------------------------------------)

[comment]: <> (This program is free software: you can redistribute)
[comment]: <> (it and/or modify it under the terms of the GNU Affero)
[comment]: <> (General Public License as published by the Free)
[comment]: <> (Software Foundation, either version 3 of the License.)

[comment]: <> (This program is distributed in the hope that it will be useful,)
[comment]: <> (but WITHOUT ANY WARRANTY; without even the implied warranty of)
[comment]: <> (MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the)
[comment]: <> (GNU Affero General Public License for more details.)

[comment]: <> (You should have received a copy of the GNU Affero General Public)
[comment]: <> (License along with this program.)
[comment]: <> (If not, see <https://www.gnu.org/licenses/>.)

# Inteppacman

**Inte**ger **p**rude **pacman**
extension.

Inteppacman is a cross-platform pacman extension
capable to manage Android applications.

```
inteppacman \
  -h
```

Inteppacman uses using the
[Crash Bash](
  https://github.com/themartiancompany/crash-bash)
library.

## Name meaning

The name of this program is a pun on the Italian
expression *int 'e pacc man!"*, which roughly translates to
*(now it's) in your ass, man!"* and explicitly refers to how
this program, by directly extending pacman
to work on virtually all compatible computing platforms
as well as taking over their native package management
systems, is supposed to undo the damage decades of
evil corporative parochialism have
caused to software communities and societies in general.

Inteppacman is written using the
[Crash Bash](
  https://github.com/themartiancompany/crash-bash)
library.

## Installation

The program in this source repo
can be installed from source using GNU Make.

```bash
make \
  install
```

or even run directly

```bash
bash \
  inteppacman/inteppacman
```

Inteppacman has officially published on the
the uncensorable
[Ur](
  https://github.com/themartiancompany/ur)
user repository and application store as
`inteppacman`.
The source code is published on the
[Ethereum Virtual Machine File System](
  https://github.com/themartiancompany/evmfs)
so it can't possibly be taken down.

To install it from there just type

```bash
ur \
  inteppacman
```

A censorable HTTP Github mirror of the recipe published there,
containing a full list of the software dependencies needed to run the
tools is hosted on
[inteppacman-ur](
  https://github.com/themartiancompany/inteppacman-ur).

A censorable binary package has been published on the
[Fallback User Repository](
  https://github.com/themartiancompany/fur)
and it can be installed with

```bash
fur \
  inteppacman
```

## License

This program is released under the terms of the GNU Affero
General Public License 3.
