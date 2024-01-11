const { sign, verify } = require("jsonwebtoken");

module.exports.createTokens = (id, email) => {
  
  const accessToken = sign(
    {
      id: id,
      email: email,
    },
    "f56793a0dc7382d04dfa7c171ab37712bf949577c58c648d799b9d866d4ecee6",
    {
      expiresIn: "8hr",
    }
  );
  return accessToken;
};
