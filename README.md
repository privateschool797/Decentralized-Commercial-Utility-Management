# Decentralized Commercial Utility Management

This repository contains a blockchain-based solution for managing commercial utilities in a decentralized manner. The platform enables property owners and managers to track, optimize, and allocate utility consumption and costs across commercial buildings and tenant spaces.

## Core Components

The system consists of four primary smart contracts:

1. **Property Registration Contract**: Records and manages commercial building details and characteristics
2. **Consumption Tracking Contract**: Monitors and reports real-time usage of electricity, water, and gas utilities
3. **Rate Optimization Contract**: Analyzes consumption patterns to identify the most cost-effective utility plans
4. **Cost Allocation Contract**: Provides transparent distribution of utility expenses among multiple tenants

## Features

- Immutable record of property specifications and tenant agreements
- Real-time utility consumption monitoring and reporting
- Automated cost allocation based on configurable distribution methods
- Historical consumption data analysis for identifying optimization opportunities
- Transparent billing and expense tracking for all stakeholders
- Integration with IoT devices for automated meter readings
- Notification system for unusual consumption patterns

## Getting Started

### Prerequisites

- Node.js and npm
- Truffle or Hardhat development framework
- Web3.js or ethers.js library
- MetaMask or similar Ethereum wallet
- Ganache (for local development)

### Installation

1. Clone the repository
```
git clone https://github.com/your-username/decentralized-utility-management.git
cd decentralized-utility-management
```

2. Install dependencies
```
npm install
```

3. Compile smart contracts
```
npx truffle compile
```

4. Deploy to your preferred network
```
npx truffle migrate --network [network-name]
```

## Usage

The platform provides both a web interface and API access for integration with existing property management systems. Key functionalities include:

- Registering commercial properties with detailed specifications
- Connecting utility meters and IoT devices for automated readings
- Setting up tenant allocation rules and formulas
- Generating reports for consumption analysis and cost distribution
- Receiving recommendations for utility plan optimization

## Benefits

- Reduced administrative overhead for utility management
- Transparent and fair cost allocation among tenants
- Identification of consumption anomalies and potential savings
- Simplified regulatory compliance and reporting
- Enhanced sustainability through consumption awareness

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
