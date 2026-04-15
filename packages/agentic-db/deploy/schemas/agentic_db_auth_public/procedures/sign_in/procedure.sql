-- Deploy: schemas/agentic_db_auth_public/procedures/sign_in/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table


CREATE FUNCTION agentic_db_auth_public.sign_in(
  IN email text,
  IN password text,
  IN remember_me boolean DEFAULT false,
  IN credential_kind text DEFAULT 'bearer',
  IN csrf_token text DEFAULT NULL,
  OUT id uuid,
  OUT user_id uuid,
  OUT access_token text,
  OUT access_token_expires_at timestamptz,
  OUT is_verified boolean,
  OUT totp_enabled boolean
) AS $_PGFN_$
DECLARE
  v_email agentic_db_user_identifiers_public.emails;
  v_settings agentic_db_auth_private.app_auth_settings;
  v_sign_in_attempt_window_duration interval := '15 minutes'::interval;
  v_sign_in_max_attempts int := 5;
  v_default_session_duration interval := '2 weeks'::interval;
  v_remember_me_duration interval := '30 days'::interval;
  v_require_csrf boolean := false;
  v_user_is_verified boolean := false;
  v_user_is_disabled boolean := false;
  v_user_is_banned boolean := false;
  first_failed_password_attempt timestamptz;
  password_attempts int;
  v_session_id uuid;
  v_credential_id uuid;
  v_plaintext_credential text;
  v_csrf_secret text;
  v_anon_session agentic_db_auth_private.sessions;
  v_session_expires_at timestamptz;
BEGIN
  SELECT *
  FROM agentic_db_auth_private.app_auth_settings
  LIMIT
  1 INTO v_settings;
  SELECT
    COALESCE(v_settings.max_failed_login_attempts, 5) INTO v_sign_in_max_attempts;
  SELECT
    COALESCE(v_settings.lockout_duration, '15 minutes'::interval) INTO v_sign_in_attempt_window_duration;
  SELECT
    COALESCE(v_settings.default_session_duration, '2 weeks'::interval) INTO v_default_session_duration;
  SELECT
    COALESCE(v_settings.remember_me_duration, '30 days'::interval) INTO v_remember_me_duration;
  SELECT
    COALESCE(v_settings.require_csrf_for_auth, false) INTO v_require_csrf;
  IF v_require_csrf AND sign_in.csrf_token IS NULL THEN
    RAISE EXCEPTION 'CSRF_TOKEN_REQUIRED';
  END IF;
  IF sign_in.csrf_token IS NOT NULL THEN
    SELECT s.*
    FROM agentic_db_auth_private.sessions AS s
    WHERE
      ((s.csrf_secret = sign_in.csrf_token AND s.is_anonymous = true) AND s.revoked_at IS NULL) AND s.expires_at > now() INTO v_anon_session;
    IF NOT (FOUND) THEN
      RAISE EXCEPTION 'INVALID_CSRF_TOKEN';
    END IF;
  END IF;
  SELECT *
  FROM agentic_db_user_identifiers_public.emails AS user_emails_alias
  WHERE
    user_emails_alias.email = sign_in.email::email INTO v_email;
  IF NOT (FOUND) THEN
    RETURN;
  END IF;
  PERFORM pg_advisory_xact_lock(hashtext('sign_in'), hashtext(v_email.owner_id::text));
  first_failed_password_attempt := agentic_db_simple_secrets.get(v_email.owner_id, 'first_failed_password_attempt');
  password_attempts := agentic_db_simple_secrets.get(v_email.owner_id, 'password_attempts');
  IF (first_failed_password_attempt IS NOT NULL AND first_failed_password_attempt > (now() - v_sign_in_attempt_window_duration)) AND password_attempts >= v_sign_in_max_attempts THEN
    RAISE EXCEPTION 'ACCOUNT_LOCKED_EXCEED_ATTEMPTS';
  END IF;
  SELECT
    membership_status.is_verified,
    membership_status.is_disabled,
    membership_status.is_banned
  FROM agentic_db_memberships_public.app_memberships AS membership_status
  WHERE
    membership_status.actor_id = v_email.owner_id INTO v_user_is_verified, v_user_is_disabled, v_user_is_banned;
  IF v_user_is_disabled IS TRUE OR v_user_is_banned IS TRUE THEN
    RAISE EXCEPTION 'ACCOUNT_DISABLED';
  END IF;
  IF agentic_db_encrypted.verify(v_email.owner_id, 'password_hash', sign_in.password) THEN
    PERFORM agentic_db_simple_secrets.del(v_email.owner_id, ARRAY['password_attempts', 'first_failed_password_attempt']);
    INSERT INTO agentic_db_logging_public.audit_logs (
      actor_id,
      event,
      success
    )
    VALUES
      (v_email.owner_id, 'sign_in', true);
    IF v_anon_session.id IS NOT NULL THEN
      UPDATE agentic_db_auth_private.sessions SET
      revoked_at = now()
      WHERE
        id = v_anon_session.id;
    END IF;
    SELECT encode(gen_random_bytes(32), 'hex') INTO v_csrf_secret;
    SELECT uuidv7() INTO v_session_id;
    IF sign_in.remember_me IS TRUE THEN
      SELECT
        now() + v_remember_me_duration INTO v_session_expires_at;
    ELSE
      SELECT
        now() + v_default_session_duration INTO v_session_expires_at;
    END IF;
    INSERT INTO agentic_db_auth_private.sessions (
      id,
      user_id,
      is_anonymous,
      expires_at,
      last_password_verified,
      csrf_secret,
      origin,
      uagent
    )
    VALUES
      (v_session_id, v_email.owner_id, false, v_session_expires_at, CURRENT_TIMESTAMP, v_csrf_secret, jwt_public.current_origin(), jwt_public.current_user_agent());
    SELECT encode(gen_random_bytes(48), 'hex') INTO v_plaintext_credential;
    SELECT uuid_generate_v5(uuid_ns_url(), v_plaintext_credential) INTO v_credential_id;
    INSERT INTO agentic_db_auth_private.session_credentials (
      id,
      session_id,
      kind,
      secret_hash,
      expires_at
    )
    VALUES
      (v_credential_id, v_session_id, sign_in.credential_kind, digest(v_plaintext_credential, 'sha256'), v_session_expires_at);
    SELECT v_credential_id INTO id;
    SELECT v_email.owner_id INTO user_id;
    SELECT v_plaintext_credential INTO access_token;
    SELECT v_session_expires_at INTO access_token_expires_at;
    SELECT v_user_is_verified INTO is_verified;
    SELECT false INTO totp_enabled;
    RETURN;
  ELSE
    INSERT INTO agentic_db_logging_public.audit_logs (
      actor_id,
      event,
      success
    )
    VALUES
      (v_email.owner_id, 'sign_in', false);
    IF first_failed_password_attempt IS NULL OR (first_failed_password_attempt + v_sign_in_attempt_window_duration) < now() THEN
      password_attempts := 1;
      first_failed_password_attempt := now();
    ELSE
      password_attempts := password_attempts + 1;
    END IF;
    PERFORM agentic_db_simple_secrets.set(v_email.owner_id, 'password_attempts', password_attempts);
    PERFORM agentic_db_simple_secrets.set(v_email.owner_id, 'first_failed_password_attempt', first_failed_password_attempt);
    RETURN;
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

