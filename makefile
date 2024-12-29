# Makefile for compiling LaTeX documents with xelatex and organizing output files

# Define the main document name (without extension)
MAIN = example

# Define the directory for build files
BUILD_DIR = build

# Define the xelatex command
LATEX = xelatex

# List of auxiliary files to remove
AUX_FILES = *.aux *.log *.out *.toc *.nav *.snm *.vrb *.fls *.fdb_latexmk

# Default target to compile the document
all: $(BUILD_DIR)/$(MAIN).pdf

# Create the build directory if it doesn't exist
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Compile the document using xelatex in batch mode and place output in the build directory
$(BUILD_DIR)/$(MAIN).pdf: $(MAIN).tex | $(BUILD_DIR)
	$(LATEX) -interaction=batchmode -output-directory=$(BUILD_DIR) $(MAIN).tex
	@if [ $$? -eq 0 ]; then $(MAKE) clean; fi

# Clean up auxiliary files in the build directory
clean:
	rm -f $(BUILD_DIR)/$(AUX_FILES)

# Remove the entire build directory
clean-all:
	rm -rf $(BUILD_DIR)

# Phony targets
.PHONY: all compile clean clean-all
