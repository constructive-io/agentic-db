-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/fixtures/fix0000002391
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table


INSERT INTO "agent_db_auth_private".app_auth_settings (
  require_csrf_for_auth,
  default_session_duration,
  remember_me_duration,
  default_credential_duration,
  default_fingerprint_mode,
  allow_anonymous_sessions,
  allow_multiple_sessions,
  max_failed_login_attempts,
  lockout_duration,
  min_password_length,
  enable_cookie_auth
)
VALUES
  ('f'::boolean, '2 weeks'::interval, '30 days'::interval, '1 hour'::interval, 'lax', 't'::boolean, 't'::boolean, 5, '15 minutes'::interval, 8, 'f'::boolean);

