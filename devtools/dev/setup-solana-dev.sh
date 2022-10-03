echo "[INFO] Setting Solana to use dev network"
solana config set --url https://api.devnet.solana.com
# echo "[INFO] Generating new wallet | or uncomment the to import one"
# solana-keygen new --outfile ~/.config/solana/candyfactory-devnet.json --force && solana address > ./logs/dev/new-wallet-log.txt
# read answer
# echo $answer > ~/.config/solana/candyfactory-devnet.json
echo "[INFO] Setting config to be the new wallet"
solana config set -k ~/.config/solana/candyfactory-devnet.json
solana address > ./logs/dev/new-wallet-log.txt
echo "[INFO] Sending airdrop"
solana airdrop 5
cat ~/.config/solana/candyfactory-devnet.json
