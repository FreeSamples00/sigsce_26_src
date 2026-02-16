TARGET_PATH = main
PDF_NAME = Abstract-SIGSCE-26-SRC
ARTIFACT_DIR = .build_artifacts
BUILD_FLAGS = -interaction=batchmode -output-directory=$(ARTIFACT_DIR) -jobname=$(PDF_NAME) $(TARGET_PATH)

build:
	mkdir -p $(ARTIFACT_DIR)
	pdflatex $(BUILD_FLAGS) > /dev/null
	pdflatex $(BUILD_FLAGS) > /dev/null
	mv $(ARTIFACT_DIR)/$(PDF_NAME).pdf ./$(PDF_NAME).pdf
	@echo
	@echo "Build Log:  ./$(ARTIFACT_DIR)/$(PDF_NAME).log"
	@echo "PDF Output: ./$(PDF_NAME).pdf"

clean:
	rm -rf $(ARTIFACT_DIR)
