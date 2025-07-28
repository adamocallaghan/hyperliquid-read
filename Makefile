-include .env

# Deploy L1Read Contract to HyperEVM
deploy-read-contract:
	forge script script/DeployL1Read.s.sol:DeployL1Read --broadcast --legacy --account deployer -vvvvv

# Read the Hyperliquid Core block number using our deployed contract
read-block-number:
	cast call $(L1READ_CONTRACT_ADDRESS) "l1BlockNumber()(uint64)" --rpc-url $(HYPEREVM_TESTNET_RPC)

