#! /usr/bin/env python3

import webview


def main():
    webview.create_window(
        "Audible Player", "https://www.audible.com/library/titles?filterBy=unfinished"
    )
    webview.start(private_mode=False)


if __name__ == "__main__":
    main()
