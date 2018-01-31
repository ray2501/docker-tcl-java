#!/usr/bin/env tclsh

set buildit [list docker run -t -i -v /home/danilo/Public/tclBlend:/root tcljava:devel /bin/bash]
exec >@stdout 2>@stderr {*}$buildit

