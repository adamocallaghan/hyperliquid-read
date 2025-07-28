-include .env

# Deploy L1Read Contract to HyperEVM
deploy-read-contract:
	forge script script/DeployL1Read.s.sol:DeployL1Read --broadcast --legacy --account deployer -vvvvv

# Read the Hyperliquid Core block number using our deployed contract
read-block-number:
	cast call $(L1READ_CONTRACT_ADDRESS) "l1BlockNumber()(uint64)" --rpc-url $(HYPEREVM_TESTNET_RPC)

# Get $HYPE spot price from Hyperliquid Core
get-hype-price:
	cast call $(L1READ_CONTRACT_ADDRESS) "spotPx(uint32)(uint64)" 1035 --rpc-url $(HYPEREVM_TESTNET_RPC)

# Get $HYPE spot price from Hyperliquid Core
get-eth-price:
	cast call $(L1READ_CONTRACT_ADDRESS) "spotPx(uint32)(uint64)" 1137 --rpc-url $(HYPEREVM_TESTNET_RPC)

# Get $HYPE spot price from Hyperliquid Core
get-purr-price:
	cast call $(L1READ_CONTRACT_ADDRESS) "spotPx(uint32)(uint64)" 0 --rpc-url $(HYPEREVM_TESTNET_RPC)

# Get Hype tokenSupply (returns TokenSupply struct with nested UserBalance struct)
get-hype-token-supply:
	cast call $(L1READ_CONTRACT_ADDRESS) "tokenSupply(uint32)(uint64,uint64,uint64,uint64,(uint64,uint64))" 1105 --rpc-url $(HYPEREVM_TESTNET_RPC)