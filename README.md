# cyfrin-foundry-fund-me

## install dependencies

```zsh
forge install smartcontractkit/chainlink-brownie-contracts@v1.2.0 --no-commit
forge install Cyfrin/foundry-devops --no-commit
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
forge test --mt testPriceFeedVersionIsAccurate --fork-url $RPC_URL_SEPOLIA
```

check coverage:

```zsh
forge coverage
```

coverage with lcoc report:

```zsh
forge coverage --report lcov
```

## check gas costs

```zsh
forge snapshot --mt testWithdrawFromASingleFunder
```

## storage optimization

run example script:

```zsh
forge script script/DeployFunWithStorage.s.sol:DeployFunWithStorage --rpc-url $RPC_URL --account anvilPrivateKey0 --sender $(cast wallet address --account anvilPrivateKey0) --broadcast -vvvv
```
