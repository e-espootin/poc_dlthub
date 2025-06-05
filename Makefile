.PHONY: all build test release clean run gh act
export .env

gh:
	gh repo create poc_dlthub --private

act:
	echo 'Running GitHub workflows locally with ACT'
	act --container-architecture linux/amd64 --artifact-server-path /tmp/artifacts --workflows .github/workflows/build_package.yml
	act --container-architecture linux/amd64 --artifact-server-path /tmp/artifacts --workflows .github/workflows/release.yml

run:
	echo 'Running the application'
	src\app\ingest\rest_api_pipeline.py

test:
	echo 'Running tests'
	uv run pytest