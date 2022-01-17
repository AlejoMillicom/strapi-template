const path = require('path');

module.exports = ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: env('DATABASE_HOST', 'merchant-platform-landing-cms.cpdprsgplcjh.us-east-1.rds.amazonaws.com'),
      port: env.int('DATABASE_PORT', 5432),
      database: env('DATABASE_NAME', 'merchant-platform-landing-cms'),
      user: env('DATABASE_USERNAME', 'postgres'),
      password: env('DATABASE_PASSWORD', 'landingcms'),
      schema: env('DATABASE_SCHEMA', 'public'), // Not required
      ssl: false,
    },
    debug: false,
  },
});
