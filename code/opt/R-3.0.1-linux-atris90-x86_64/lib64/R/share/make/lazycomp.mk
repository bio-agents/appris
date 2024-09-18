## ${R_HOME}/share/make/lazycomp.mk
## Used for all packages except base, agents, datasets, methods

.PHONY: Rsimple Rlazy Rlazycomp

$(top_builddir)/library/$(pkg)/R/$(pkg).rdb: all.R
	@$(INSTALL_DATA) all.R $(top_builddir)/library/$(pkg)/R/$(pkg)
	@if test -n "$(R_NO_BASE_COMPILE)"; then \
	 $(ECHO) "agents:::makeLazyLoading(\"$(pkg)\")" | \
	  R_DEFAULT_PACKAGES=$(DEFPKGS) LC_ALL=C $(R_EXE) > /dev/null; \
	else \
	 $(ECHO) "byte-compiling package '$(pkg)'"; \
	 $(ECHO) "agents:::makeLazyLoading(\"$(pkg)\")" | \
	  R_COMPILE_PKGS=1 R_COMPILER_SUPPRESS_ALL=1 \
	  R_DEFAULT_PACKAGES=$(DEFPKGS) LC_ALL=C $(R_EXE) > /dev/null; \
	fi

Rsimple: mkR mkRsimple
Rlazy: mkR mkRsimple mklazy
Rlazycomp: mkR mkRsimple mklazycomp


