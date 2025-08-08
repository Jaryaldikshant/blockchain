# 📦 Blockchain & Solidity Learning Repository

This repository contains smart contracts written in **Solidity** for learning blockchain concepts, basic data types, arrays, mappings, contract deployment, and inheritance.  
It serves as a step-by-step resource to understand **Ethereum smart contract development**.

---

## 🔗 Basics of Blockchain

**Blockchain** is a distributed, immutable ledger that records transactions in a secure and transparent way.

**Key Features:**
- **Decentralized** – No single entity controls the network.
- **Immutable** – Once data is recorded, it cannot be altered.
- **Transparent** – All transactions are publicly verifiable.
- **Secure** – Uses cryptographic techniques for safety.

**Ethereum** extends blockchain by enabling **smart contracts** — programs that run exactly as written, without downtime or interference.

---

## 📝 Basics of Solidity

**Solidity** is a contract-oriented language for writing Ethereum smart contracts.

**Core Concepts:**
- **State Variables** – Stored on the blockchain and persistent between calls.
- **Functions** – Define actions in a contract.
- **Data Types** – `bool`, `uint`, `int`, `string`, `address`, `bytes`.
- **Structs** – Custom types that group related variables.
- **Arrays & Mappings** – Store multiple data entries.
- **Visibility** – `public`, `private`, `internal`, `external`.
- **Inheritance** – Reusing code from other contracts.
- **ABI** – Application Binary Interface for interacting with contracts.

---

## 📂 Project Structure

```
solidity/
 ├── simpleStorage/
 │   └── contracts/
 │       ├── learn/
 │       │   ├── 1_Basic.sol
 │       │   ├── 3_Arrays.sol
 │       │   └── 4_Mapping.sol
 │       └── 2_SimpleStorage.sol
 └── storageFactory/
     ├── AddFiveStorage.sol
     ├── SimpleStorage.sol
     └── StorageFactory.sol
```

---

## 📜 Contract Summaries

### **1_Basic.sol**
- Shows **basic data types**:
  - `bool`, `uint`, `int`, `string`, `address`, `bytes`.
- Example:
  ```solidity
  bool hasFavouriteNumber = true;
  uint favouriteNumber = 88;
  address myAddress = 0x7B5402A3b43D0252F30fbd0A1704Cd3a9F4c584c;
  ```

---

### **3_Arrays.sol**
- Demonstrates:
  - **Static arrays** (`uint256[3]`).
  - **Dynamic arrays** (`Person[]`).
  - **Structs** to create custom data types.
- `addPerson()` function adds a person’s name and favorite number to the array.

---

### **4_Mapping.sol**
- Uses **mapping** to link a `string` (name) to a `uint` (favorite number).
- Also stores the same data in a struct array for iteration.
- Example:
  ```solidity
  mapping(string => uint256) public nameToFavouriteNumber;
  ```

---

### **2_SimpleStorage.sol**
- Stores and retrieves numbers from blockchain storage.
- Demonstrates:
  - `store()` → Saves a number.
  - `retrieve()` → Returns stored number.
  - `retrieving()` → Returns a fixed number (pure function).
- Handles **dynamic arrays** and **mappings** for storing people.

---

### **StorageFactory.sol**
- Shows how a contract can **deploy another contract**.
- Maintains an array of deployed `SimpleStorage` contracts.
- Functions:
  - `createSimpleStorageContract()` – Deploys a new contract.
  - `sfStore()` – Stores a number in a deployed contract.
  - `sfGet()` – Retrieves a number from a deployed contract.

---

### **AddFiveStorage.sol**
- Demonstrates **inheritance**.
- Inherits from `SimpleStorage` and **overrides** `store()` to always add 5 to the given number.
- Adds a `sayHello()` function for demonstration.

---

## 🚀 How to Use
1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new workspace and upload these `.sol` files.
3. Compile with **Solidity version 0.8.30**.
4. Deploy contracts and interact using the **Deploy & Run Transactions** panel.

---

## ✅ Concepts Covered
- Solidity basics & syntax
- State variables, view & pure functions
- Structs, arrays, and mappings
- Contract deployment & interaction
- Inheritance & function overriding
- Working with public variables

---

