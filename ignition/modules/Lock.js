
const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("itModule", (m) => {
  const initialSupply = m.getParameter("initialSupply", 1000000000);
  const myToken = m.contract("itContract", [initialSupply]);

  return { myToken };
});
