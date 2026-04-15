-- Deploy: schemas/agentic_db_auth_public/procedures/sign_up/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table


CREATE FUNCTION agentic_db_auth_public.sign_up(
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
  v_user agentic_db_users_public.users;
  v_email agentic_db_user_identifiers_public.emails;
  v_session_id uuid;
  v_credential_id uuid;
  v_plaintext_credential text;
  v_csrf_secret text;
  v_anon_session agentic_db_auth_private.sessions;
  v_session_expires_at timestamptz;
  v_settings agentic_db_auth_private.app_auth_settings;
  v_default_session_duration interval := '2 weeks'::interval;
  v_remember_me_duration interval := '30 days'::interval;
  v_require_csrf boolean := false;
  v_min_password_length int := 8;
BEGIN
  SELECT *
  FROM agentic_db_auth_private.app_auth_settings
  LIMIT
  1 INTO v_settings;
  SELECT
    COALESCE(v_settings.default_session_duration, '2 weeks'::interval) INTO v_default_session_duration;
  SELECT
    COALESCE(v_settings.remember_me_duration, '30 days'::interval) INTO v_remember_me_duration;
  SELECT
    COALESCE(v_settings.require_csrf_for_auth, false) INTO v_require_csrf;
  SELECT
    COALESCE(v_settings.min_password_length, 8) INTO v_min_password_length;
  IF v_require_csrf AND sign_up.csrf_token IS NULL THEN
    RAISE EXCEPTION 'CSRF_TOKEN_REQUIRED';
  END IF;
  IF sign_up.csrf_token IS NOT NULL THEN
    SELECT s.*
    FROM agentic_db_auth_private.sessions AS s
    WHERE
      ((s.csrf_secret = sign_up.csrf_token AND s.is_anonymous = true) AND s.revoked_at IS NULL) AND s.expires_at > now() INTO v_anon_session;
    IF NOT (FOUND) THEN
      RAISE EXCEPTION 'INVALID_CSRF_TOKEN';
    END IF;
  END IF;
  PERFORM agentic_db_auth_public.check_password(sign_up.password);
  SELECT trim(sign_up.password) INTO password;
  SELECT *
  FROM agentic_db_user_identifiers_public.emails AS t
  WHERE
    (trim(sign_up.email))::email = t.email INTO v_email;
  IF NOT (FOUND) THEN
    INSERT INTO agentic_db_users_public.users
    VALUES
      (DEFAULT)
    RETURNING * INTO v_user;
    INSERT INTO agentic_db_user_identifiers_public.emails (
      owner_id,
      email
    )
    VALUES
      (v_user.id, trim(sign_up.email))
    RETURNING * INTO v_email;
    PERFORM agentic_db_encrypted.set(v_user.id, 'password_hash', trim(sign_up.password), 'crypt');
    IF v_anon_session.id IS NOT NULL THEN
      UPDATE agentic_db_auth_private.sessions SET
      revoked_at = now()
      WHERE
        id = v_anon_session.id;
    END IF;
    SELECT encode(gen_random_bytes(32), 'hex') INTO v_csrf_secret;
    SELECT uuidv7() INTO v_session_id;
    IF sign_up.remember_me IS TRUE THEN
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
      csrf_secret
    )
    VALUES
      (v_session_id, v_user.id, false, v_session_expires_at, v_csrf_secret);
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
      (v_credential_id, v_session_id, sign_up.credential_kind, digest(v_plaintext_credential, 'sha256'), v_session_expires_at);
    SELECT v_credential_id INTO id;
    SELECT v_user.id INTO user_id;
    SELECT v_plaintext_credential INTO access_token;
    SELECT v_session_expires_at INTO access_token_expires_at;
    SELECT false INTO is_verified;
    SELECT false INTO totp_enabled;
    RETURN;
  ELSE
    RAISE EXCEPTION 'ACCOUNT_EXISTS';
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

