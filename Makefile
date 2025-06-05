.PHONY: all build test release clean

gh:
	gh repo create poc_dlthub --private

act:
	act --container-architecture linux/amd64 --artifact-server-path /tmp/artifacts --workflows .github/workflows/build_package.yml
	act --container-architecture linux/amd64 --artifact-server-path /tmp/artifacts --workflows .github/workflows/release.yml