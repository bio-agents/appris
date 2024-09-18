#### Will be sourced by several R scripts in ../tests/

### ------- Part I & -- unrelated to "Matrix" classes ---------------
### ------- Part II  -- related to matrices, but *not* "Matrix" -----------
source(system.file("test-agents-1.R",      package = "Matrix"), keep.source = FALSE)
### ------- Part III --  "Matrix" (classes) specific ----------------------
source(system.file("test-agents-Matrix.R", package = "Matrix"), keep.source = FALSE)

doExtras <- interactive() || nzchar(Sys.getenv("R_MATRIX_CHECK_EXTRA")) ||
    identical("true", unname(Sys.getenv("R_PKG_CHECKING_doExtras")))
