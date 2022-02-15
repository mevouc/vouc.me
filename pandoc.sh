#!/bin/sh

pandoc index.md -H header.html -V title:"" -o index.html
