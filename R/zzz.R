.onLoad <- function(libname, pkgname) {
  py_file = system.file('python',
                    'tag_format.py',
                    package = pkgname, mustWork = TRUE)
  fun_env <- environment()
  reticulate::source_python(file = py_file, envir = parent.env(fun_env))
  # use superassignment to update global reference to scipy
  # scipy <<- reticulate::import("scipy", delay_load = TRUE)
}
