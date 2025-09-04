# ct

Cloud Tools - Python Tools using Typer/FastApi with Rust integration

Example demonstrating a Python package command line interface
- Starting point to build out automation in cloud environments
- Unified cloud command line examples using Typer
- Automatic documentation creation
- Linting using Ruff and PEP8
- Simple API using FastAPI
- Rust integration


### Python uv
```
brew install uv
make
source .venv/bin/activate
```

### Build
```
make
make check
make install
```

### Python Dev
```
python3 src/ct.py --help
python3 src/ct.py cs
python3 src/ct.py aws -c li
python3 src/ct.py gcp -c li
```

### API
```
bash api.sh
bash src/test/curl-tests.sh

# Swagger
http://127.0.0.1:8081/docs
```

### Python Package
```
# Install package
make install

ct --help
ct cs
ct aws -c li
ct gcp -c li

# Generate docs
make docs
```

### Python3/Rust

For things that need to run faster/safer

Building will enable Rust CLI functions
```
make rust
python3 src/ct.py rust-print -c hello
python3 src/ct.py rust-rand -c hello
```

### Links

Python: https://www.python.org

Typer: https://github.com/tiangolo/typer

FastAPI: https://github.com/tiangolo/fastapi

Rust: https://www.rust-lang.org

Rust pyo3: https://docs.rs/pyo3/latest/pyo3/ 
