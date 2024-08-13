// middleware/authenticate.js
import jwt from 'jsonwebtoken';

export const authenticateUser = (req, res, next) => {
  const token = req.header('Authorization').replace('Bearer ', '');

  if (!token) {
    return res.status(401).json({ message: "Authentication required" });
  }

  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded; // Assuming decoded token contains user info
    next();
  } catch (error) {
    res.status(401).json({ message: "Invalid token" });
  }
};