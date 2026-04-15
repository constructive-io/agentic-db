-- Deploy: schemas/agentic_db_auth_public/procedures/confirm_delete_account/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table


CREATE FUNCTION agentic_db_auth_public.confirm_delete_account(
  IN user_id uuid,
  IN token text
) RETURNS boolean AS $_PGFN_$
DECLARE
  v_expires_interval interval := '3 days'::interval;
  account_deletion_email_attempts int;
  account_deletion_email_sent_at timestamptz;
  first_failed_account_deletion_email_attempt timestamptz;
  v_max_deletion_attempts int := 10;
BEGIN
  PERFORM pg_advisory_xact_lock(hashtext('delete_account'), hashtext(confirm_delete_account.user_id::text));
  account_deletion_email_sent_at := agentic_db_simple_secrets.get(confirm_delete_account.user_id, 'account_deletion_email_sent_at');
  account_deletion_email_attempts := agentic_db_simple_secrets.get(confirm_delete_account.user_id, 'account_deletion_email_attempts');
  first_failed_account_deletion_email_attempt := agentic_db_simple_secrets.get(confirm_delete_account.user_id, 'first_failed_account_deletion_email_attempt');
  IF account_deletion_email_sent_at IS NOT NULL AND (account_deletion_email_sent_at + v_expires_interval) < now() THEN
    PERFORM agentic_db_simple_secrets.del(confirm_delete_account.user_id, ARRAY['account_deletion_email_sent_at', 'account_deletion_email_attempts', 'first_failed_account_deletion_email_attempt']);
    PERFORM agentic_db_encrypted.del(confirm_delete_account.user_id, 'account_deletion_token');
    RETURN false;
  END IF;
  IF (first_failed_account_deletion_email_attempt IS NOT NULL AND first_failed_account_deletion_email_attempt > (now() - v_expires_interval)) AND account_deletion_email_attempts >= v_max_deletion_attempts THEN
    RAISE EXCEPTION 'ACCOUNT_LOCKED_EXCEED_ATTEMPTS';
  END IF;
  IF agentic_db_encrypted.verify(confirm_delete_account.user_id, 'account_deletion_token', confirm_delete_account.token) THEN
    PERFORM agentic_db_simple_secrets.del(confirm_delete_account.user_id, ARRAY['account_deletion_email_sent_at', 'account_deletion_email_attempts', 'first_failed_account_deletion_email_attempt']);
    PERFORM agentic_db_encrypted.del(confirm_delete_account.user_id, 'account_deletion_token');
    DELETE FROM agentic_db_users_public.users
    WHERE
      id = confirm_delete_account.user_id;
    RETURN true;
  ELSE
    IF first_failed_account_deletion_email_attempt IS NULL OR (first_failed_account_deletion_email_attempt + v_expires_interval) < now() THEN
      account_deletion_email_attempts := 1;
      first_failed_account_deletion_email_attempt := now();
    ELSE
      account_deletion_email_attempts := account_deletion_email_attempts + 1;
    END IF;
    PERFORM agentic_db_simple_secrets.set(confirm_delete_account.user_id, 'account_deletion_email_attempts', account_deletion_email_attempts);
    PERFORM agentic_db_simple_secrets.set(confirm_delete_account.user_id, 'first_failed_account_deletion_email_attempt', first_failed_account_deletion_email_attempt);
    RETURN false;
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

