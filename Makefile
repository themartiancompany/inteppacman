# SPDX-License-Identifier: AGPL-3.0

#    -----------------------------------------------------
#    Copyright © 2024, 2025, 2026  Pellegrino Prevete
#
#    All rights reserved
#    -----------------------------------------------------
#
#    This program is free software: you can redistribute
#    it and/or modify it under the terms of the
#    GNU Affero General Public License as published by
#    the Free Software Foundation, either version 3 of
#    the License, or (at your option) any later version.
#
#    This program is distributed in the hope that it
#    will be useful, but WITHOUT ANY WARRANTY;
#    without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#    See the GNU Affero General Public License for
#    more details.
#
#    You should have received a copy of the
#    GNU Affero General Public License
#    along with this program.
#    If not, see <https://www.gnu.org/licenses/>.

_PROJECT=inteppacman
PREFIX ?= /usr/local
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/$(_PROJECT)
BIN_DIR=$(DESTDIR)$(PREFIX)/bin
MAN_DIR?=$(DESTDIR)$(PREFIX)/share/man

_INSTALL_FILE=\
  install \
    -vDm644
_INSTALL_DIR=\
  install \
    -vdm755
_INSTALL_EXE=\
  install \
    -vDm755
_MAKE_EXE=\
  chmod \
    755
_MAKE_LINK=\
  ln \
    -sv

DOC_FILES=\
  $(wildcard \
      *.rst)
SCRIPT_FILES=\
  $(wildcard \
      $(_PROJECT)/*)

all: build-man

build-man:

	make \
	  prepare
	cd \
	  "man"; \
	make \
	  build-man

prepare: prepare-man

prepare-man:

	git \
	  submodule \
	    update \
	    --init \
	      "man" || \
	true

check: shellcheck

shellcheck:

	shellcheck \
	  -s \
	    "bash" \
	  $(SCRIPT_FILES)

install: install-scripts install-doc install-man

install-scripts:

	$(_INSTALL_EXE)  \
	  "$(_PROJECT)/$(_PROJECT)" \
	  "$(BIN_DIR)/$(_PROJECT)"

install-doc:

	$(_INSTALL_FILE) \
	  $(DOC_FILES) \
	  -t \
	  $(DOC_DIR)

install-man:

	$(_INSTALL_DIR) \
	  "$(MAN_DIR)/man1"
	for _file in "inteppacman"; do \
	  rst2man \
	    "man/$${_file}.1.rst" \
	    "$(MAN_DIR)/man1/$${_file}.1"; \
	done

uninstall: uninstall-man uninstall-scripts

uninstall-man:

	rm \
	  -vrf \
	    "$(MAN_DIR)/man1/$${_file}.1"

uninstall-scripts:

	rm \
	  -vf \
	  "$(BIN_DIR)/$(_PROJECT)"


.PHONY: check build-man install install-doc install-man install-scripts prepare prepare-man shellcheck uninstall uninstall-man uninstall-scripts
