-- Deploy: schemas/agentic_db_auth_public/procedures/send_account_deletion_email/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_simple_secrets/schema


CREATE FUNCTION agentic_db_auth_public.send_account_deletion_email() RETURNS boolean AS $_PGFN_$
DECLARE
  v_email agentic_db_user_identifiers_public.emails;
  v_deletion_token text;
  v_min_duration_between_emails interval := '3 minutes'::interval;
  v_user_id uuid := jwt_public.current_user_id();
  v_max_duration interval := '3 days'::interval;
  account_deletion_email_sent_at timestamptz;
BEGIN
  IF v_user_id IS NULL THEN
    RETURN false;
  END IF;
  SELECT *
  FROM agentic_db_user_identifiers_public.emails AS e
  WHERE
    e.owner_id = v_user_id
  ORDER BY
    is_primary DESC,
    is_verified DESC
  LIMIT
  1 INTO v_email;
  IF NOT (FOUND) THEN
    RETURN false;
  END IF;
  v_user_id := v_email.owner_id;
  account_deletion_email_sent_at := agentic_db_simple_secrets.get(v_user_id, 'account_deletion_email_sent_at');
  IF account_deletion_email_sent_at IS NOT NULL AND now() < (account_deletion_email_sent_at + v_min_duration_between_emails) THEN
    RETURN false;
  END IF;
  v_deletion_token := encode(gen_random_bytes(7), 'hex');
  PERFORM agentic_db_encrypted.set(v_user_id, 'account_deletion_token', v_deletion_token, 'crypt');
  PERFORM agentic_db_simple_secrets.set(v_user_id, 'account_deletion_email_sent_at', (now())::text);
  PERFORM app_jobs.add_job(jwt_private.current_database_id(), 'send-account-deletion-link', json_build_object('email_type', 'account_deletion', 'user_id', v_user_id, 'email', v_email.email::text, 'account_deletion_token', v_deletion_token));
  RETURN true;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

