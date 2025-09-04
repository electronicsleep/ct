#!/usr/bin/env python3
# Purpose: Test Python calling Rust cpython library

import libcloudtools
import typer


def main(cmd: str = typer.Argument("hello")):
    result = libcloudtools.rust_print("testing")
    print(f"rust_print {result}")
    result = libcloudtools.rust_rand("testing")
    print(f"rust_rand {result}")


if __name__ == "__main__":
    typer.run(main)
