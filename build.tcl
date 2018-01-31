#!/usr/bin/env tclsh

set buildit [list docker build -t=tcljava:devel .]
exec >@stdout 2>@stderr {*}$buildit

