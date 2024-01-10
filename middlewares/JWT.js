const { sign, verify } = require("jsonwebtoken");

module.exports.createTokens = (user_id, email) => {
  const accessToken = sign(
    {
      user_id: user_id,
      email: email,
    },
    "f56793a0dc7382d04dfa7c171ab37712bf949577c58c648d799b9d866d4ecee6",
    {
      expiresIn: "8hr",
    }
  );
  return accessToken;
};
