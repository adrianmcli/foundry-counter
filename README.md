## Foundry Counter Example

Just a simple project for me to practice the basic workflows of Foundry development.

## Manual Testing with Anvil

1. Start an Anvil instance (on another terminal) by running `anvil`. You should get a bunch of public keys and private keys as well as the text "Listening on 127.0.0.1:8545".

2. Make a `.env` file at project root and place one of Anvil's provided private keys (e.g.`PRIVATE_KEY=0x1234...`).

3. Run the following to deploy:
   ```bash
   forge script script/Counter.s.sol --broadcast --rpc-url http://localhost:8545
   ```
4. (optional) Check that the contract is there by doing a `cast call`:
   ```bash
   cast call <contract_deployed_address> "number()(uint256)" --rpc-url http://localhost:8545
   ```

5. (optional) Send a transaction to the contract by doing a `cast send`:
   ```bash
   cast send <contract_deployed_address> "increment()" --rpc-url http://localhost:8545 --private-key <private_key_from_anvil>
   ```

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
