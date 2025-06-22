#!/bin/bash
directory=`dirname $0`
json="com.hirohiro716.open_in_default_browser.json"
mkdir -p ~/.mozilla/native-messaging-hosts/
cp "$directory/native-messaging-hosts/$json" ~/.mozilla/native-messaging-hosts/
sed -i "s/YOUR_USERNAME/$USER/g" ~/.mozilla/native-messaging-hosts/$json
pythonScript="com.hirohiro716.open_in_default_browser.py"
cp "$directory/$pythonScript" ~/.mozilla/
chmod 700 ~/.mozilla/$pythonScript

