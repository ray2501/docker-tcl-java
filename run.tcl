#!/usr/bin/env tclsh

set buildit [list docker run -t -i tcljava:devel /bin/bash]
exec >@stdout 2>@stderr {*}$buildit

