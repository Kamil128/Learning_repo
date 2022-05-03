SHELL:=/bin/bash

clean:
	@echo "Cleaning ipynb checkpoints"
	find . -depth -type d -name ".ipynb_checkpoints" -exec rm -r "{}" \;