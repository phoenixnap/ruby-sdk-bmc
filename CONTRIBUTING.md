# Contributing

## Taking a Release

Follow this process when preparing and publishing a new release.

### 1. Validate the current state

Optionally run the following workflows manually:

* `generate-all`
* `validate-all`

Before continuing, confirm that the latest `validate-all` workflow completed successfully.

If `validate-all` failed:

* Review the failed jobs.
* Identify whether the failures are caused by compilation issues or SDK breaking changes.
* Record any modules affected by SDK breaking changes.

### 2. Prepare the release PRs

Run the `prepare-release-prs` workflow.

When starting the workflow:

* Provide any SDK breaking-change modules as a comma-separated input.
* Modules listed as SDK breaking changes will receive a major version bump.
* Any module not listed will be automatically bumped as either `minor` or `patch`, depending on the changes detected in the `spec` files.
* Any new module will automatically start at version `1.0.0`.

Version handling is managed by the workflow. No manual version changes are expected.

### 3. Review and update the draft release PR

Open the generated draft release PR.

The PR includes human-readable notes describing the detected spec changes. Use these notes to identify which endpoints require review.

Using your preferred IDE:

* Update the tests package with matching payloads and endpoints from the new spec changelog where applicable.
* Add or update tests manually as needed.

### 4. Merge the release PR

Merge the `release/vX` branch PR into `master`.

After the merge, an automatic workflow will create a back-merge PR from `release/vX` to `develop`.

Review and merge the back-merge PR as well.

Version handling remains automated throughout this step. No manual version changes are expected.

### 5. Run the publish dry run

Run the `publish-all-sdks-dry-run` workflow.

Confirm that the workflow completes successfully before publishing the release.

### 6. Create the GitHub release

Create a release from `master`.

As part of the release process, create a tag using the same version as the original `release/vX` branch.

For example, if the release branch is:

```text
release/v2.4.0
```

then the GitHub release and tag should also use:

```text
v2.4.0
```

### 7. Publish the SDKs

Creating the GitHub release automatically starts the `publish-all-sdks` workflow.

This workflow publishes all SDKs and finalizes the release.
