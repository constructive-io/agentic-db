-- Deploy: schemas/agentic_db_auth_public/procedures/verify_totp/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_auth_public/schema


CREATE FUNCTION agentic_db_auth_public.verify_totp(
  IN totp_value text
) RETURNS boolean AS $_PGFN_$
DECLARE
  v_session agentic_db_auth_private.sessions;
  v_sign_in_attempt_window_duration interval := '6 hours'::interval;
  v_sign_in_max_attempts int := 10;
  first_failed_totp_attempt timestamptz;
  totp_attempts int;
  totp_secret text;
  v_user_id uuid;
  v_session_id uuid;
BEGIN
  v_user_id := jwt_public.current_user_id();
  v_session_id := jwt_private.current_session_id();
  PERFORM pg_advisory_xact_lock(hashtext('verify_totp'), hashtext(v_user_id::text));
  first_failed_totp_attempt := agentic_db_simple_secrets.get(v_user_id, 'first_failed_totp_attempt');
  totp_attempts := agentic_db_simple_secrets.get(v_user_id, 'totp_attempts');
  totp_secret := agentic_db_simple_secrets.get(v_user_id, 'totp_secret');
  IF totp_secret IS NULL THEN
    RAISE EXCEPTION 'TOTP_NOT_ENABLED';
  END IF;
  IF (first_failed_totp_attempt IS NOT NULL AND first_failed_totp_attempt > (now() - v_sign_in_attempt_window_duration)) AND totp_attempts >= v_sign_in_max_attempts THEN
    RAISE EXCEPTION 'ACCOUNT_LOCKED_EXCEED_ATTEMPTS';
  END IF;
  IF totp.verify(totp_secret, verify_totp.totp_value, 30, 6) IS TRUE THEN
    PERFORM agentic_db_simple_secrets.del(v_user_id, ARRAY['totp_attempts', 'first_failed_totp_attempt']);
    INSERT INTO agentic_db_logging_public.audit_logs (
      actor_id,
      event,
      success
    )
    VALUES
      (v_user_id, 'verify_totp', true);
    UPDATE agentic_db_auth_private.sessions AS sess SET
    last_mfa_verified = CURRENT_TIMESTAMP, expires_at = expires_at + '30 minutes'::interval
    WHERE
      (sess.id = v_session_id AND CASE sess.user_agent IS NULL 
          WHEN true THEN jwt_public.current_user_agent() IS NULL 
          ELSE sess.user_agent = jwt_public.current_user_agent() 
        END) AND CASE sess.origin IS NULL 
          WHEN true THEN jwt_public.current_origin() IS NULL 
          ELSE sess.origin = jwt_public.current_origin() 
        END
    RETURNING * INTO v_session;
    RETURN true;
  ELSE
    INSERT INTO agentic_db_logging_public.audit_logs (
      actor_id,
      event,
      success
    )
    VALUES
      (v_user_id, 'verify_totp', false);
    IF first_failed_totp_attempt IS NULL OR (first_failed_totp_attempt + v_sign_in_attempt_window_duration) < now() THEN
      totp_attempts := 1;
      first_failed_totp_attempt := now();
    ELSE
      totp_attempts := totp_attempts + 1;
    END IF;
    PERFORM agentic_db_simple_secrets.set(v_user_id, 'totp_attempts', totp_attempts);
    PERFORM agentic_db_simple_secrets.set(v_user_id, 'first_failed_totp_attempt', first_failed_totp_attempt);
    RETURN NULL;
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE STRICT SECURITY DEFINER;

