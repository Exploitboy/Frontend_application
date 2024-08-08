# Task Management DApp

This project is a decentralized application (DApp) for managing tasks using a smart contract on the Ethereum blockchain. It integrates with MetaMask and Web3 to interact with the smart contract, allowing users to add and retrieve task information.

## Overview

This DApp allows users to:
- **Add a Task:** Store a task with an ID, description, and completion status.
- **Retrieve a Task:** Fetch and display the task information by its ID.

## Features

- **MetaMask Integration:** Connects to MetaMask to manage Ethereum accounts and interact with the blockchain.
- **Smart Contract Interaction:** Uses Web3 to interact with an Ethereum smart contract deployed on the specified network.

## Prerequisites

- **MetaMask:** Ensure MetaMask is installed in your browser and configured to connect to the correct Ethereum network.
- **Web3 Library:** The Web3 library is used for interacting with the Ethereum blockchain.

## Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/Exploitboy/Frontend_application.git
   cd Frontend_application
   ```

2. **Open `index.html` in a Browser:**

   Simply open the `index.html` file in a modern web browser. It will load the Web3 library and your JavaScript code.

## Usage

### Set Task

1. Enter the **Task ID** (a numeric value).
2. Enter the **Task Description** (a string value).
3. Check the **Completed** checkbox if the task is completed.
4. Click the **"Set Task"** button to store the task on the blockchain.

### Get Task

1. Enter the **Task ID** (a numeric value) in the lookup field.
2. Click the **"Get Task"** button to fetch and display the task details from the blockchain.

## Smart Contract Details

The smart contract used in this project is deployed at:

- **Contract Address:** `0x3d4cf90464cC36Dd3aaDBF21F2F1c759c860bF59`

The contract ABI (Application Binary Interface) used:

```json
[
    {
        "constant": false,
        "inputs": [
            { "name": "_taskId", "type": "uint256" },
            { "name": "_description", "type": "string" },
            { "name": "_completed", "type": "bool" }
        ],
        "name": "setTask",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [{ "name": "_taskId", "type": "uint256" }],
        "name": "getTask",
        "outputs": [
            { "name": "", "type": "string" },
            { "name": "", "type": "bool" }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    }
]
```

## Troubleshooting

- **MetaMask Issues:** Ensure MetaMask is installed, unlocked, and connected to the correct network.
- **Network Configuration:** Verify that the Ethereum network configured in MetaMask matches the network where the smart contract is deployed.
- **Console Errors:** Check the browser's console for errors if the DApp is not functioning as expected.

## Acknowledgments

- [MetaMask](https://metamask.io) for providing a bridge to interact with the Ethereum blockchain.
- [Web3.js](https://web3js.readthedocs.io/en/v1.5.2/) for enabling interaction with Ethereum.

---

Feel free to adjust the content as necessary to better fit your project or personal preferences!
