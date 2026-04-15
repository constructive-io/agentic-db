-- Deploy: schemas/agentic_db_auth_public/procedures/reset_password/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table


CREATE FUNCTION agentic_db_auth_public.reset_password(
  IN role_id uuid,
  IN reset_token text,
  IN new_password text
) RETURNS boolean AS $_PGFN_$
DECLARE
  v_user agentic_db_users_public.users;
  v_reset_max_interval interval := '3 days'::interval;
  v_reset_max_attempts int := 10;
  reset_password_attempts int;
  first_failed_reset_password_attempt timestamptz;
  v_user_is_verified boolean := false;
  v_user_is_disabled boolean := false;
  v_user_is_banned boolean := false;
BEGIN
  IF (reset_password.role_id IS NULL OR reset_password.reset_token IS NULL) OR reset_password.new_password IS NULL THEN
    RAISE EXCEPTION 'NULL_VALUES_DISALLOWED';
  END IF;
  SELECT *
  FROM agentic_db_users_public.users AS u
  WHERE
    id = reset_password.role_id INTO v_user;
  IF NOT (FOUND) THEN
    RETURN NULL;
  END IF;
  SELECT
    membership_status.is_verified,
    membership_status.is_disabled,
    membership_status.is_banned
  FROM agentic_db_memberships_public.app_memberships AS membership_status
  WHERE
    membership_status.actor_id = reset_password.role_id INTO v_user_is_verified, v_user_is_disabled, v_user_is_banned;
  IF v_user_is_disabled IS TRUE OR v_user_is_banned IS TRUE THEN
    RAISE EXCEPTION 'ACCOUNT_DISABLED';
  END IF;
  PERFORM pg_advisory_xact_lock(hashtext('reset_password'), hashtext(v_user.id::text));
  reset_password_attempts := agentic_db_simple_secrets.get(v_user.id, 'reset_password_attempts');
  first_failed_reset_password_attempt := agentic_db_simple_secrets.get(v_user.id, 'first_failed_reset_password_attempt');
  IF (first_failed_reset_password_attempt IS NOT NULL AND now() < (first_failed_reset_password_attempt + v_reset_max_interval)) AND reset_password_attempts >= v_reset_max_attempts THEN
    RAISE EXCEPTION 'PASSWORD_RESET_LOCKED_EXCEED_ATTEMPTS';
  END IF;
  IF agentic_db_encrypted.verify(v_user.id, 'reset_password_token', reset_password.reset_token) THEN
    PERFORM agentic_db_encrypted.set(v_user.id, 'password_hash', reset_password.new_password, 'crypt');
    PERFORM agentic_db_simple_secrets.del(v_user.id, ARRAY['password_attempts', 'first_failed_password_attempt', 'reset_password_token_generated', 'reset_password_attempts', 'first_failed_reset_password_attempt']);
    PERFORM agentic_db_encrypted.del(v_user.id, 'reset_password_token');
    INSERT INTO agentic_db_logging_public.audit_logs (
      actor_id,
      event,
      success
    )
    VALUES
      (v_user.id, 'reset_password', true);
    RETURN true;
  ELSE
    INSERT INTO agentic_db_logging_public.audit_logs (
      actor_id,
      event,
      success
    )
    VALUES
      (v_user.id, 'reset_password', false);
    IF first_failed_reset_password_attempt IS NULL OR (first_failed_reset_password_attempt + v_reset_max_interval) < now() THEN
      reset_password_attempts := 1;
      first_failed_reset_password_attempt := now();
    ELSE
      reset_password_attempts := reset_password_attempts + 1;
    END IF;
    PERFORM agentic_db_simple_secrets.set(v_user.id, 'reset_password_attempts', reset_password_attempts);
    PERFORM agentic_db_simple_secrets.set(v_user.id, 'first_failed_reset_password_attempt', first_failed_reset_password_attempt);
    RETURN false;
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

