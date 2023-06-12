import { Connection, PublicKey } from '@solana/web3.js';

async function checkBalance(publicKey: string): Promise<void> {
  try {
    const connection = new Connection('https://api.mainnet-beta.solana.com'); // Connect to the Solana network
    const publicKeyObj = new PublicKey(publicKey); // Create a PublicKey object from the provided string

    const balance = await connection.getBalance(publicKeyObj); // Fetch the balance of the public key

    console.log(`Balance of ${publicKey}: ${balance} SOL`); // Display the balance in SOL
  } catch (error) {
    console.error('Error:', error);
  }
}

// Specify the public key you want to check the balance for
const publicKey = '<enter_public_key_here>';

checkBalance(publicKey);
