skip_if_no_metaflow <- function() {
  have_metaflow <- reticulate::py_module_available("metaflow")
  if (!have_metaflow) {
    skip("metaflow not available for testing")
  }
}

find_python <- function() {
  python <- Sys.which("python3")
  if (nchar(python) == 0) {
    python <- Sys.which("python")
  }
  if (nchar(python) == 0) {
    skip("python not found on PATH")
  }
  python
}
