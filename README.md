

# Blockchain Workshop

## Installation Instructions

### 1. Ganache

To get started with our blockchain workshop, follow these steps:

1. **Install Ganache:**
   - Download Ganache from its official website or GitHub repository.
   - Make the downloaded file executable:
     ```bash
     chmod +x ganache-<version>.AppImage
     ./ganache-<version>.AppImage
     ```

2. **Run Ganache:**
   - Launch Ganache to simulate a local Ethereum blockchain.

 or ganache-cli

### 2. Truffle

Next, install Truffle for Ethereum smart contract development:

1. **Install Node.js and npm:**
   - Ensure Node.js and npm are installed:
     ```bash
     sudo apt update
     sudo apt install nodejs npm
     ```

2. **Install Truffle:**
   - Install Truffle globally using npm:
     ```bash
     sudo npm install -g truffle
     ```

3. **Initialize a New Truffle Project:**
   - Create a new directory for your Truffle project:
     ```bash
     mkdir blockchain-workshop
     cd blockchain-workshop
     ```

   - Initialize the Truffle project inside the directory:
     ```bash
     truffle init
     ```
