TARGET_PATH = main
OUTPUT_PATH = output
PDF_NAME = Abstract-SIGSCE-26-SRC
ARTIFACT_DIR = .build_artifacts
BUILD_FLAGS = -interaction=batchmode -output-directory=$(ARTIFACT_DIR) -jobname=$(PDF_NAME) $(TARGET_PATH)

build:
	mkdir -p $(ARTIFACT_DIR)
	mkdir -p $(OUTPUT_PATH)
	pdflatex $(BUILD_FLAGS) > /dev/null
	pdflatex $(BUILD_FLAGS) > /dev/null
	mv $(ARTIFACT_DIR)/$(PDF_NAME).pdf ./$(OUTPUT_PATH)/$(PDF_NAME).pdf
	@echo
	@echo "Build Log:  ./$(ARTIFACT_DIR)/$(PDF_NAME).log"
	@echo "PDF Output: ./$(OUTPUT_PATH)/$(PDF_NAME).pdf"

clean:
	rm -rf $(ARTIFACT_DIR)
