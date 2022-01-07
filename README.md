# Terraform configs for the osbuild's GitLab-based CI

This repository contains Terraform config's for the osbuild's GitLab-based
CI. These configs are used by a custom Terraform executor hosted
[here][gitlab-ci-terraform-executor].

## Inputs and outputs

AWS configs take an `internal_network` input. If set to `true`, the instance
is placed inside a VPC connected to the Red Hat's internal network.

Each config must output an `ip_address`. It's an array of strings
that contains IP addresses that can be used to connect to the instance.

## `config.json`

Each config must have `config.json` file providing some extra information
to the executor:

| Field              | Type                 | Required | Comment                                                                                                                                                                                                            |
| ------------------ | -------------------- | -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| user               | string               | yes      | A username to be used to log into the instance.                                                                                                                                                                    |
| runnerArch         | "amd64" or "aarch64" | yes      | Instance architecture                                                                                                                                                                                              |
| prepareScript      | string               | no       | A script that is run before installing `git-core` and `gitlab-runner` into the instance. Useful for adding custom repositories.                                                                                    |
| subscriptionNeeded | bool                 | no       | If set to true, the executor subscribes the instance before installing `git-core` and `gitlab-runner` into the instance. The subscription script is taken from the `RHN_REGISTRATION_SCRIPT` environment variable. |

[gitlab-ci-terraform-executor]: https://github.com/osbuild/gitlab-ci-terraform-executor 
