#!/usr/bin/env python3
# Purpose: Test Python calling Rust cpython library

import libcloudtools
import typer


def main(cmd: str = typer.Argument("test")):
    result = libcloudtools.rust_print(cmd)
    print(f"INFO: rust_print: {result}")
    result = libcloudtools.rust_rand(cmd)
    print(f"INFO: rust_rand: {result}")


if __name__ == "__main__":
    typer.run(main)
