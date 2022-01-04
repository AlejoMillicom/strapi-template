module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'df8c260adb8ecf040535feea8e82a2bc'),
  },
});
