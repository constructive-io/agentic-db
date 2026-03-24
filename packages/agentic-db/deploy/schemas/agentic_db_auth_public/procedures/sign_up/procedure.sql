-- Deploy: schemas/agentic_db_auth_public/procedures/sign_up/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_auth_public/procedures/check_password/procedure
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous



CREATE FUNCTION agentic_db_auth_public.sign_up (
  email text,
  password text,
  remember_me boolean DEFAULT FALSE,
  credential_kind text DEFAULT 'bearer',
  csrf_token text DEFAULT NULL,
  OUT id uuid,
  OUT user_id uuid,
  OUT access_token text,
  OUT access_token_expires_at timestamptz,
  OUT is_verified boolean,
  OUT totp_enabled boolean
)
  AS $$
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
  v_default_session_duration interval := interval '2 weeks';
  v_remember_me_duration interval := interval '30 days';
  v_require_csrf boolean := false;  -- Default to false for backward compatibility
  v_min_password_length int := 8;
BEGIN
  SELECT * FROM agentic_db_auth_private.app_auth_settings LIMIT 1 INTO v_settings;
  v_default_session_duration := COALESCE(v_settings.default_session_duration, interval '2 weeks');
  v_remember_me_duration := COALESCE(v_settings.remember_me_duration, interval '30 days');
  v_require_csrf := COALESCE(v_settings.require_csrf_for_auth, false);
  v_min_password_length := COALESCE(v_settings.min_password_length, 8);
  IF (v_require_csrf AND csrf_token IS NULL) THEN
    RAISE EXCEPTION 'CSRF_TOKEN_REQUIRED';
  END IF;
  IF (csrf_token IS NOT NULL) THEN
    SELECT s.*
    FROM agentic_db_auth_private.sessions AS s
    WHERE s.csrf_secret = csrf_token
      AND s.is_anonymous = true
      AND s.revoked_at IS NULL
      AND s.expires_at > NOW()
    INTO v_anon_session;
    IF (NOT FOUND) THEN
      RAISE EXCEPTION 'INVALID_CSRF_TOKEN';
    END IF;
  END IF;
  PERFORM agentic_db_auth_public.check_password(
    password
  );
  password = trim(password);
  SELECT * FROM agentic_db_user_identifiers_public.emails t
    WHERE trim(sign_up.email)::email = t.email
  INTO v_email;
  IF (NOT FOUND) THEN
    INSERT INTO agentic_db_users_public.users
      DEFAULT VALUES
    RETURNING
      * INTO v_user;
    INSERT INTO agentic_db_user_identifiers_public.emails (owner_id, email)
      VALUES (v_user.id, trim(sign_up.email))
    RETURNING
      * INTO v_email;
    PERFORM agentic_db_encrypted.set
      (v_user.id, 'password_hash', trim(password), 'crypt');
    IF (v_anon_session.id IS NOT NULL) THEN
      UPDATE agentic_db_auth_private.sessions
        SET revoked_at = NOW()
        WHERE id = v_anon_session.id;
    END IF;
    v_csrf_secret := encode(gen_random_bytes(32), 'hex');
    v_session_id := uuidv7();
    IF (remember_me IS TRUE) THEN 
      v_session_expires_at := NOW() + v_remember_me_duration;
    ELSE 
      v_session_expires_at := NOW() + v_default_session_duration;
    END IF;
    INSERT INTO agentic_db_auth_private.sessions (
      id,
      user_id,
      is_anonymous,
      expires_at,
      csrf_secret
    )
    VALUES (
      v_session_id,
      v_user.id,
      false,
      v_session_expires_at,
      v_csrf_secret
    );
    v_plaintext_credential := encode(gen_random_bytes(48), 'hex');
    v_credential_id := uuid_generate_v5(uuid_ns_url(), v_plaintext_credential);
    INSERT INTO agentic_db_auth_private.session_credentials (
      id,
      session_id,
      kind,
      secret_hash,
      expires_at
    )
    VALUES (
      v_credential_id,
      v_session_id,
      credential_kind,
      digest(v_plaintext_credential, 'sha256'),
      v_session_expires_at
    );
    id := v_credential_id;
    user_id := v_user.id;
    access_token := v_plaintext_credential;
    access_token_expires_at := v_session_expires_at;
    is_verified := false;
    totp_enabled := false;
    RETURN;
  END IF;
  RAISE EXCEPTION 'ACCOUNT_EXISTS';
END;
$$
LANGUAGE plpgsql
VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION agentic_db_auth_public.sign_up TO anonymous;

