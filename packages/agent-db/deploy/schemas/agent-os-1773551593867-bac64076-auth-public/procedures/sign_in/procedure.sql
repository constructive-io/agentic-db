-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-public/procedures/sign_in/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/table
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table



CREATE FUNCTION "agent-os-1773551593867-bac64076-auth-public".sign_in (
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
  v_session_id uuid;
  v_credential_id uuid;
  v_email "agent-os-1773551593867-bac64076-user-identifiers-public".emails;
  v_settings "agent-os-1773551593867-bac64076-auth-private".app_auth_settings;
  v_sign_in_attempt_window_duration interval := interval '15 minutes';
  v_sign_in_max_attempts int := 5;
  v_default_session_duration interval := interval '2 weeks';
  v_remember_me_duration interval := interval '30 days';
  v_require_csrf boolean := false;  -- Default to false for backward compatibility
  v_user_is_verified boolean default false;
  v_user_is_disabled boolean default false;
  v_user_is_banned boolean default false;
  first_failed_password_attempt timestamptz;
  password_attempts int;
  v_plaintext_credential text;
  v_csrf_secret text;
  v_anon_session "agent-os-1773551593867-bac64076-auth-private".sessions;
  
  v_session_expires_at timestamptz;
BEGIN
  SELECT * FROM "agent-os-1773551593867-bac64076-auth-private".app_auth_settings LIMIT 1 INTO v_settings;
  v_sign_in_max_attempts := COALESCE(v_settings.max_failed_login_attempts, 5);
  v_sign_in_attempt_window_duration := COALESCE(v_settings.lockout_duration, interval '15 minutes');
  v_default_session_duration := COALESCE(v_settings.default_session_duration, interval '2 weeks');
  v_remember_me_duration := COALESCE(v_settings.remember_me_duration, interval '30 days');
  v_require_csrf := COALESCE(v_settings.require_csrf_for_auth, false);
  IF (v_require_csrf AND csrf_token IS NULL) THEN
    RAISE EXCEPTION 'CSRF_TOKEN_REQUIRED';
  END IF;
  IF (csrf_token IS NOT NULL) THEN
    SELECT s.*
    FROM "agent-os-1773551593867-bac64076-auth-private".sessions AS s
    WHERE s.csrf_secret = csrf_token
      AND s.is_anonymous = true
      AND s.revoked_at IS NULL
      AND s.expires_at > NOW()
    INTO v_anon_session;
    IF (NOT FOUND) THEN
      RAISE EXCEPTION 'INVALID_CSRF_TOKEN';
    END IF;
  END IF;
  SELECT
    user_emails_alias.*
  FROM
    "agent-os-1773551593867-bac64076-user-identifiers-public".emails AS user_emails_alias
  WHERE
    user_emails_alias.email = sign_in.email::email INTO v_email;
  
  IF (NOT FOUND) THEN
    RETURN;
  END IF;
  first_failed_password_attempt = "agent-os-1773551593867-bac64076-simple-secrets".get(v_email.owner_id, 'first_failed_password_attempt');
  password_attempts = "agent-os-1773551593867-bac64076-simple-secrets".get(v_email.owner_id, 'password_attempts');
  IF (
    first_failed_password_attempt IS NOT NULL
      AND
    first_failed_password_attempt > NOW() - v_sign_in_attempt_window_duration
      AND
    password_attempts >= v_sign_in_max_attempts
  ) THEN
    RAISE EXCEPTION 'ACCOUNT_LOCKED_EXCEED_ATTEMPTS';
  END IF;
  SELECT  
      mem.is_verified,
      mem.is_disabled,
      mem.is_banned
    FROM "agent-os-1773551593867-bac64076-memberships-public".app_memberships AS mem
    WHERE mem.actor_id = v_email.owner_id
  INTO 
    v_user_is_verified,
    v_user_is_disabled,
    v_user_is_banned;
  IF (v_user_is_disabled IS TRUE OR v_user_is_banned IS TRUE) THEN 
      RAISE EXCEPTION 'ACCOUNT_DISABLED';
  END IF;
  IF ( "agent-os-1773551593867-bac64076-encrypted".verify(v_email.owner_id, 'password_hash', PASSWORD) ) THEN
    PERFORM "agent-os-1773551593867-bac64076-simple-secrets".del(v_email.owner_id,
    ARRAY[
      'password_attempts', 'first_failed_password_attempt'
    ]);
    INSERT INTO "agent-os-1773551593867-bac64076-logging-public".audit_logs 
      (actor_id, event, success)
    VALUES (
      v_email.owner_id,
      'sign_in',
      TRUE
    );
    IF (v_anon_session.id IS NOT NULL) THEN
      UPDATE "agent-os-1773551593867-bac64076-auth-private".sessions
        SET revoked_at = NOW()
        WHERE id = v_anon_session.id;
    END IF;
    v_csrf_secret := encode(gen_random_bytes(32), 'hex');
    v_session_id := gen_random_uuid();
    IF (remember_me IS TRUE) THEN 
      v_session_expires_at := NOW() + v_remember_me_duration;
    ELSE 
      v_session_expires_at := NOW() + v_default_session_duration;
    END IF;
    INSERT INTO "agent-os-1773551593867-bac64076-auth-private".sessions (
      id,
      user_id,
      is_anonymous,
      expires_at,
      last_password_verified,
      csrf_secret,
      origin,
      uagent
    )
    VALUES (
      v_session_id,
      v_email.owner_id,
      false,
      v_session_expires_at,
      current_timestamp,
      v_csrf_secret,
      jwt_public.current_origin(),
      jwt_public.current_user_agent()
    );
    v_plaintext_credential := encode(gen_random_bytes(48), 'hex');
    v_credential_id := uuid_generate_v5(uuid_ns_url(), v_plaintext_credential);
    INSERT INTO "agent-os-1773551593867-bac64076-auth-private".session_credentials (
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
    user_id := v_email.owner_id;
    access_token := v_plaintext_credential;
    access_token_expires_at := v_session_expires_at;
    is_verified := v_user_is_verified;
    totp_enabled := false;
    RETURN;
  ELSE
   INSERT INTO "agent-os-1773551593867-bac64076-logging-public".audit_logs 
      (actor_id, event, success)
    VALUES (
      v_email.owner_id,
      'sign_in',
      FALSE
    );
    IF (password_attempts IS NULL) THEN
      password_attempts = 0;
    END IF;
    IF (
      first_failed_password_attempt IS NULL
        OR
      first_failed_password_attempt < NOW() - v_sign_in_attempt_window_duration
    ) THEN
      password_attempts = 1;
      first_failed_password_attempt = NOW();
    ELSE 
      password_attempts = password_attempts + 1;
    END IF;
    PERFORM "agent-os-1773551593867-bac64076-simple-secrets".set(v_email.owner_id, 'password_attempts', password_attempts);
    PERFORM "agent-os-1773551593867-bac64076-simple-secrets".set(v_email.owner_id, 'first_failed_password_attempt', first_failed_password_attempt);
    RETURN;
  END IF;
END;
$$
LANGUAGE 'plpgsql'
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-auth-public".sign_in TO anonymous;

