// middleware/auth.js
export const checkDoctorRole = (req, res, next) => {
    if (req.user && req.user.role === 'doctors') {
      next();
    } else {
      res.status(403).json({ message: "Forbidden: Access is denied" });
    }
  };
  