# Makefile for compiling LaTeX documents with xelatex and organizing output files

# Define the main document name (without extension)
MAIN = example

# List of LaTeX style files
STYLE = *.sty

# Define the directory for build files
BUILD_DIR = build

# Define the xelatex command and related
LATEX = xelatex
PRETTIER = prettier
PRETTIER_PLUGIN = /opt/homebrew/lib/node_modules/prettier-plugin-latex/dist/prettier-plugin-latex.js

# List of auxiliary files to remove
AUX_FILES = *.aux *.log *.out *.toc *.nav *.snm *.vrb *.fls *.fdb_latexmk

# Remove the default suffixes
.SUFFIXES:

# Default target to compile the document
all: $(BUILD_DIR)/$(MAIN).pdf

# Create the build directory if it doesn't exist
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)
	@echo "Created build directory"

# Compile the document using xelatex in batch mode and place output in the build directory
$(BUILD_DIR)/$(MAIN).pdf: $(MAIN).tex | $(BUILD_DIR)
	@echo "Compiling $(MAIN).tex"
	$(LATEX) -interaction=batchmode -output-directory=$(BUILD_DIR) $(MAIN).tex
	@if [ $$? -eq 0 ]; then $(MAKE) clean; fi
	@echo "Compilation complete - $(MAIN).pdf"

# Format the LaTeX source files using prettier
format: $(MAIN).tex $(STYLE)
	$(PRETTIER) --write --plugin=$(PRETTIER_PLUGIN) $(MAIN).tex

# Clean up auxiliary files in the build directory
clean:
	rm -f $(BUILD_DIR)/$(AUX_FILES)

# Remove the entire build directory
clean-all:
	rm -rf $(BUILD_DIR)

# Phony targets
.PHONY: all compile clean clean-all
