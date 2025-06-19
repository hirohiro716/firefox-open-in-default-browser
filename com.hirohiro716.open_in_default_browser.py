#!/usr/bin/env python3
import sys
import json
import webbrowser

def read_message():
    raw_length = sys.stdin.buffer.read(4)
    if len(raw_length) == 0:
        return None
    message_length = int.from_bytes(raw_length, byteorder='little')
    message = sys.stdin.buffer.read(message_length).decode("utf-8")
    return json.loads(message)

def open_in_default_browser(url):
    webbrowser.open(url)

def main():
    message = read_message()
    if message and "url" in message:
        open_in_default_browser(message["url"])

if __name__ == "__main__":
    main()

