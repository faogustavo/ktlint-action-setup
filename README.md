# touchlab-lab/ktlint-action-setup

This action installs ktlint.

## Input

```yml
inputs:
  ktlint_version:
    description: 'KTLint version.'
    default: '0.42.1'
```

## Usage

To run the KTLint action, you need to use a linux machine.

```yml
runs-on: ubuntu-latest
```

#### Default

```yml
steps:
  - uses: touchlab-lab/ktlint-action-setup@1.0.0
  - run: ktlint --version
```


#### Specify ktlint version

```yml
steps:
  - uses: touchlab-lab/ktlint-action-setup@1.0.0
    with:
        ktlint_version: 0.40.0
  - run: ktlint --version
```
