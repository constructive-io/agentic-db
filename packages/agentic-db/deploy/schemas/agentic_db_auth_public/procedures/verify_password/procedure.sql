-- Deploy: schemas/agentic_db_auth_public/procedures/verify_password/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table



CREATE FUNCTION agentic_db_auth_public.verify_password (
  password text
)
  RETURNS agentic_db_auth_private.sessions
  AS $$
DECLARE
  v_session agentic_db_auth_private.sessions;
  v_sign_in_attempt_window_duration interval = interval '6 hours';
  v_sign_in_max_attempts int = 10;
  first_failed_password_attempt timestamptz;
  password_attempts int;
  v_user_id uuid;
  v_session_id uuid;
BEGIN
  v_user_id = jwt_public.current_user_id();
  v_session_id = jwt_private.current_session_id();
  first_failed_password_attempt = agentic_db_simple_secrets.get(v_user_id, 'first_failed_password_attempt');
  password_attempts = agentic_db_simple_secrets.get(v_user_id, 'password_attempts');
  IF (
    first_failed_password_attempt IS NOT NULL
      AND
    first_failed_password_attempt > NOW() - v_sign_in_attempt_window_duration
      AND
    password_attempts >= v_sign_in_max_attempts
  ) THEN
    RAISE EXCEPTION 'ACCOUNT_LOCKED_EXCEED_ATTEMPTS';
  END IF;
  IF ( agentic_db_encrypted.verify(v_user_id, 'password_hash', PASSWORD) ) THEN
    PERFORM agentic_db_simple_secrets.del(v_user_id,
    ARRAY[
      'password_attempts', 'first_failed_password_attempt'
    ]);
    INSERT INTO agentic_db_logging_public.audit_logs 
      (actor_id, event, success)
    VALUES (
      v_user_id,
      'verify_password',
      TRUE
    );
 
    UPDATE agentic_db_auth_private.sessions sess 
        SET last_password_verified = current_timestamp,
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
   INSERT INTO agentic_db_logging_public.audit_logs 
      (actor_id, event, success)
    VALUES (
      v_user_id,
      'verify_password',
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
    PERFORM agentic_db_simple_secrets.set(v_user_id, 'password_attempts', password_attempts);
    PERFORM agentic_db_simple_secrets.set(v_user_id, 'first_failed_password_attempt', first_failed_password_attempt);
    RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql'
STRICT
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION agentic_db_auth_public.verify_password TO authenticated;
REVOKE EXECUTE ON FUNCTION agentic_db_auth_public.verify_password FROM anonymous;

