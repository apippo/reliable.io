# GNU Make workspace makefile autogenerated by Premake

.NOTPARALLEL:

ifndef config
  config=debug_x64
endif

ifndef verbose
  SILENT = @
endif

ifeq ($(config),debug_x64)
  test_config = debug_x64
endif
ifeq ($(config),release_x64)
  test_config = release_x64
endif

PROJECTS := test

.PHONY: all clean help $(PROJECTS) 

all: $(PROJECTS)

test:
ifneq (,$(test_config))
	@echo "==== Building test ($(test_config)) ===="
	@${MAKE} --no-print-directory -C . -f test.make config=$(test_config)
endif

clean:
	@${MAKE} --no-print-directory -C . -f test.make clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "  debug_x64"
	@echo "  release_x64"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   test"
	@echo ""
	@echo "For more information, see http://industriousone.com/premake/quick-start"