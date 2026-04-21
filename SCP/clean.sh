#!/bin/bash

### Universal
    rm -rf /usr/share/man/*
    rm -rf /var/cache/apk/*
    rm -rf /tmp/*

### Specific
    # Extensiones no utilizadas
    rm -rf /usr/local/lib/php/test/
    rm -rf /usr/local/lib/php/doc/
    rm -rf /usr/local/lib/php/.channel/