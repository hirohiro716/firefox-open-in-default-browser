#!/bin/bash
directory=`dirname $0`
cd "$directory/extension/"
zip -r ../com.hirohiro716.open_in_default_browser.xpi *

