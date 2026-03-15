-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-public/procedures/verify_totp/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/table
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/table



CREATE FUNCTION "agent-os-1773551593867-bac64076-auth-public".verify_totp (
  totp_value text
)
  RETURNS "agent-os-1773551593867-bac64076-auth-private".sessions
  AS $$
DECLARE
  v_session "agent-os-1773551593867-bac64076-auth-private".sessions;
  v_sign_in_attempt_window_duration interval = interval '6 hours';
  v_sign_in_max_attempts int = 10;
  first_failed_totp_attempt timestamptz;
  totp_attempts int;
  totp_secret text;
  v_user_id uuid;
  v_session_id uuid;
BEGIN
  v_user_id = jwt_public.current_user_id();
  v_session_id = jwt_private.current_session_id();
  first_failed_totp_attempt = "agent-os-1773551593867-bac64076-simple-secrets".get(v_user_id, 'first_failed_totp_attempt');
  totp_attempts = "agent-os-1773551593867-bac64076-simple-secrets".get(v_user_id, 'totp_attempts');
  
  totp_secret = "agent-os-1773551593867-bac64076-simple-secrets".get(v_user_id, 'totp_secret');
  IF (totp_secret IS NULL) THEN 
    RAISE EXCEPTION 'TOTP_NOT_ENABLED';
  END IF;
  IF (
    first_failed_totp_attempt IS NOT NULL
      AND
    first_failed_totp_attempt > NOW() - v_sign_in_attempt_window_duration
      AND
    totp_attempts >= v_sign_in_max_attempts
  ) THEN
    RAISE EXCEPTION 'ACCOUNT_LOCKED_EXCEED_ATTEMPTS';
  END IF;
  IF ( totp.verify(totp_secret, totp_value, 30, 6) IS TRUE ) THEN
    PERFORM "agent-os-1773551593867-bac64076-simple-secrets".del(v_user_id,
    ARRAY[
      'totp_attempts', 'first_failed_totp_attempt'
    ]);
    INSERT INTO "agent-os-1773551593867-bac64076-logging-public".audit_logs 
      (actor_id, event, success)
    VALUES (
      v_user_id,
      'verify_totp',
      TRUE
    );
 
    UPDATE "agent-os-1773551593867-bac64076-auth-private".sessions sess 
        SET last_mfa_verified = current_timestamp,
            expires_at = expires_at + '30 minutes'::interval
    WHERE sess.id = v_session_id
      AND 
        (
            CASE WHEN sess.user_agent IS NULL THEN jwt_public.current_user_agent() IS NULL
            ELSE sess.user_agent = jwt_public.current_user_agent() END
        )
      AND 
        (
            CASE WHEN sess.origin IS NULL THEN jwt_public.current_origin() IS NULL
            ELSE sess.origin = jwt_public.current_origin() END
        )
    RETURNING * INTO v_session;
    RETURN v_session;
  ELSE
   INSERT INTO "agent-os-1773551593867-bac64076-logging-public".audit_logs 
      (actor_id, event, success)
    VALUES (
      v_user_id,
      'verify_totp',
      FALSE
    );
    IF (totp_attempts IS NULL) THEN
      totp_attempts = 0;
    END IF;
    IF (
      first_failed_totp_attempt IS NULL
        OR
      first_failed_totp_attempt < NOW() - v_sign_in_attempt_window_duration
    ) THEN
      totp_attempts = 1;
      first_failed_totp_attempt = NOW();
    ELSE 
      totp_attempts = totp_attempts + 1;
    END IF;
    PERFORM "agent-os-1773551593867-bac64076-simple-secrets".set(v_user_id, 'totp_attempts', totp_attempts);
    PERFORM "agent-os-1773551593867-bac64076-simple-secrets".set(v_user_id, 'first_failed_totp_attempt', first_failed_totp_attempt);
    RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql'
STRICT
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-auth-public".verify_totp TO authenticated;
REVOKE EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-auth-public".verify_totp FROM anonymous;

