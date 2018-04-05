# What is this for

Basically, this contains a couple of tools for validating Kubernetes config files.

For now it contains:

- [yamllint](https://github.com/adrienverge/yamllint)
- [kubeval](https://github.com/garethr/kubeval)

# How

I am using Gitlab, I have a block like:


```
stages:
  - validation
  - more-things

linting:
  image: chriscowley/kubernetes-validator:latest
  stage: validation
  script:
    - for file in $(find ${CI_PROJECT_DIR} -iname *.yml; do yamllint -d relaxed $file; done

validate_config:
  image: chriscowley/kubernetes-validator:latest
  stage: validate
  script:
    - for file in $(find ${CI_PROJECT_DIR} -iname *.yml; do kubeval $file; done
```
