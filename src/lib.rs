use pyo3::prelude::*;
use rand::Rng;

#[pyfunction]
fn rust_print(_py: Python, val: &str) -> PyResult<String> {
    Ok("rust_print: cmd: ".to_owned() + val)
}

#[pyfunction]
fn rust_rand(_py: Python, val: &str) -> PyResult<String> {
    let mut rng = rand::thread_rng();

    let n1: u8 = rng.r#gen();
    let n2: u16 = rng.r#gen();
    println!("Random u8: {}", n1);
    println!("Random u16: {}", n2);
    println!("Random u32: {}", rng.r#gen::<u32>());
    println!("Random i32: {}", rng.r#gen::<i32>());
    println!("Random float: {}", rng.r#gen::<f64>());
    Ok("rust_rand cmd: ".to_owned() + val)
}

#[pymodule]
#[pyo3(name = "libcloudtools")]
fn libcloudtools(m: &Bound<'_, PyModule>) -> PyResult<()> {
    m.add_function(wrap_pyfunction!(rust_print, m)?)?;
    m.add_function(wrap_pyfunction!(rust_rand, m)?)?;
    Ok(())
}
