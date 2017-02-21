#!/usr/bin/env bash

clang++ -masm=intel -DNDEBUG -O3 -std=c++14 -I. pimply.cpp -S && mv pimply.s pimply.indirect.s

clang++ -masm=intel -DNDEBUG -O3 -std=c++14 -I. -DPOLYMORPHIC_VALUE pimply.cpp -S && mv pimply.s pimply.polymorphic.s

