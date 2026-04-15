-- Deploy: schemas/agentic_db_auth_public/procedures/forgot_password/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table


CREATE FUNCTION agentic_db_auth_public.forgot_password(
  IN email email
) RETURNS void AS $_PGFN_$
DECLARE
  v_email agentic_db_user_identifiers_public.emails;
  v_user_id uuid;
  v_token text;
  v_min_duration_between_emails interval := '3 minutes'::interval;
  v_max_duration interval := '3 days'::interval;
  v_user_is_verified boolean := false;
  v_user_is_disabled boolean := false;
  v_user_is_banned boolean := false;
  password_reset_email_sent_at timestamptz;
BEGIN
  SELECT *
  FROM agentic_db_user_identifiers_public.emails AS e
  WHERE
    e.email = forgot_password.email::email INTO v_email;
  IF NOT (FOUND) THEN
    RETURN;
  END IF;
  v_user_id := v_email.owner_id;
  SELECT
    membership_status.is_verified,
    membership_status.is_disabled,
    membership_status.is_banned
  FROM agentic_db_memberships_public.app_memberships AS membership_status
  WHERE
    membership_status.actor_id = v_email.owner_id INTO v_user_is_verified, v_user_is_disabled, v_user_is_banned;
  IF v_user_is_banned IS TRUE OR v_user_is_disabled IS TRUE THEN
    RETURN;
  END IF;
  password_reset_email_sent_at := agentic_db_simple_secrets.get(v_user_id, 'password_reset_email_sent_at');
  IF password_reset_email_sent_at IS NOT NULL AND now() < (password_reset_email_sent_at + v_min_duration_between_emails) THEN
    RETURN;
  END IF;
  INSERT INTO agentic_db_logging_public.audit_logs (
    actor_id,
    event,
    success
  )
  VALUES
    (v_email.owner_id, 'forgot_password', true);
  v_token := encode(gen_random_bytes(7), 'hex');
  PERFORM agentic_db_encrypted.set(v_user_id, 'reset_password_token', v_token, 'crypt');
  PERFORM agentic_db_simple_secrets.set(v_user_id, 'password_reset_email_sent_at', (now())::text);
  PERFORM app_jobs.add_job(jwt_private.current_database_id(), 'send-email-link', json_build_object('email_type', 'forgot_password', 'user_id', v_user_id, 'email', v_email.email::text, 'reset_token', v_token));
  RETURN;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

