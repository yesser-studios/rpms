SUBDIR := $(shell dirname $(spec))

srpm:
	dnf install -y cargo spectool rpm-build git bash tar rpmspec

	./vendor.sh $(SUBDIR)/*.spec

	rpmbuild -bs \
	  --define "_sourcedir $(SUBDIR)" \
	  --define "_srcrpmdir $(outdir)" \
	  ./*.spec
