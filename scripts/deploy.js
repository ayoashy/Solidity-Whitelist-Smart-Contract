const { ethers } = require('hardhat');

async function main() {
  const whiteList = await ethers.getContractFactory('whiteList');

  const deployedWhiteListContract = await whiteList.deploy(10);

  await deployedWhiteListContract.deployed();

  console.log('whitelist contract address', deployedWhiteListContract.address);
}

async function run() {
  try {
    await main();
    console.log('contract deployed');
  } catch (error) {
    console.log(error);
  }
}

run();
