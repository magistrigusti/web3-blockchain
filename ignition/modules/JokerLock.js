
const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("itModule", (m) => {
  const initialSupply = m.getParameter("initialSupply", 1000000000);
  const myToken = m.contract("itContract", [initialSupply]);

  return { myToken };
});

//npx hardhat ignition deploy ./ignition/modules/JokerLock.js --network hardhat
//npx hardhat console --network hardhat

//const MyToken = await ethers.getContractFactory("Joker");
//const myToken = await MyToken.attach("0x5FbDB2315678afecb367f032d93F642f64180aa3");
//const [owner] = await ethers.getSigners();
//let balance = await myToken.balanceOf(owner.address);
//console.log(balance.toString());
//const [_, recipient] = await ethers.getSigners();
//await myToken.transfer(recipient.address, 500);