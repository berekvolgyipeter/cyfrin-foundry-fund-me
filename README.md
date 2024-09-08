# cyfrin-foundry-fund-me

## install dependencies

```zsh
forge install smartcontractkit/chainlink-brownie-contracts@v1.2.0 --no-commit
```

## tests

run all tests:

```zsh
forge test
```

run one test case:

```zsh
forge test --mt testPriceFeedVersionIsAccurate
```

run rorking test:

```zsh
forge test --mt testPriceFeedVersionIsAccurate --fork-url $SEPOLIA_RPC_URL
```

check coverage:

```zsh
forge coverage
```

coverage with lcoc report:

```zsh
forge coverage --report lcov
```
