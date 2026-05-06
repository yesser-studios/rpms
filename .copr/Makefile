SUBDIR := $(shell dirname $(spec))

srpm:
	dnf install -y cargo spectool rpm-build git bash tar rpmspec

	@if [ "$$(git diff --name-only HEAD^ HEAD | grep -E "^$(PKG_DIR)/")" = "" ]; then \
		@echo "No changes detected in $(PKG_DIR)."; \
		exit 1; \
	fi

	../vendor.sh ./*.spec
	mv ./*.tar.* ..

	rpmbuild -bs \
	  --define "_sourcedir $(SUBDIR)" \
	  --define "_srcrpmdir $(outdir)" \
	  ./*.spec
