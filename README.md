## Hyperliquid Read Precompiles

**Basic project to show how to use the Hyperliquid Read Precompiles to read state from the L1 (aka Hyperliquid Core)**

Hyperliquid Read Precompiles docs: https://hyperliquid.gitbook.io/hyperliquid-docs/for-developers/hyperevm/interacting-with-hypercore

# Activate on Core
If you are using a dev wallet that has never interacted with Hyperliquid before, you will need to activate it on Hyperliquid Core.

1. Go to: https://app.hyperliquid-testnet.xyz/drip
2. Click on "Claim 1000 mock USDC"

# Switch to 'Big Blocks'
Hyperliquid uses a dual block architecture, with small/fast blocks and large/slow blocks:
"Fast block duration is set to 1 seconds with a 2M gas limit. Slow block duration is set to 1 minute with a 30M gas limit."
Small/fast blocks are enabled on accounts by default, and they are not sufficient for deploying smart contracts.
To get around this you need to switch your account to 'big blocks'.
1. Go to: https://hyperevm-block-toggle.vercel.app/
2. Toggle it to "Testnet" and click on the "Big" button
3. Approve the transactions
....you have successfully switched your account to big blocks and can now deploy your contract.