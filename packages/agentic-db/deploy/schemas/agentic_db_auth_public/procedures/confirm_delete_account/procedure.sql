-- Deploy: schemas/agentic_db_auth_public/procedures/confirm_delete_account/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous



CREATE FUNCTION agentic_db_auth_public.confirm_delete_account (
  user_id uuid,
  token text
)
  RETURNS boolean
  AS $$
DECLARE
  v_expires_interval interval = interval '3 days';
  account_deletion_email_attempts int;
  account_deletion_email_sent_at timestamptz;
  first_failed_account_deletion_email_attempt timestamptz;
BEGIN
  account_deletion_email_sent_at = agentic_db_simple_secrets.get(confirm_delete_account.user_id, 'account_deletion_email_sent_at');
  IF (account_deletion_email_sent_at IS NOT NULL AND 
    account_deletion_email_sent_at + v_expires_interval < NOW() 
  ) THEN 
    
    PERFORM agentic_db_simple_secrets.del(confirm_delete_account.user_id, ARRAY[
        'account_deletion_email_sent_at',
        'account_deletion_email_attempts',
        'first_failed_account_deletion_email_attempt'
    ]);
    PERFORM agentic_db_encrypted.del(confirm_delete_account.user_id, 'account_deletion_token');
    RETURN FALSE;
  END IF;
  IF (agentic_db_encrypted.verify (confirm_delete_account.user_id, 'account_deletion_token', confirm_delete_account.token) ) THEN
    PERFORM agentic_db_simple_secrets.del(confirm_delete_account.user_id, ARRAY[
        'account_deletion_email_sent_at',
        'account_deletion_email_attempts',
        'first_failed_account_deletion_email_attempt'
    ]);
    PERFORM agentic_db_encrypted.del(confirm_delete_account.user_id, 'account_deletion_token');
    DELETE FROM agentic_db_users_public.users WHERE id = confirm_delete_account.user_id;
    RETURN TRUE;
  ELSE
    IF (
        first_failed_account_deletion_email_attempt IS NULL OR
        first_failed_account_deletion_email_attempt + v_expires_interval < NOW()
    ) THEN
        account_deletion_email_attempts = 1;
        first_failed_account_deletion_email_attempt = NOW();
    ELSE 
        account_deletion_email_attempts = account_deletion_email_attempts + 1;
    END IF;
    PERFORM agentic_db_simple_secrets.set(confirm_delete_account.user_id, 'account_deletion_email_attempts', account_deletion_email_attempts);
    PERFORM agentic_db_simple_secrets.set(confirm_delete_account.user_id, 'first_failed_account_deletion_email_attempt', first_failed_account_deletion_email_attempt);
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql'
VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION agentic_db_auth_public.confirm_delete_account TO anonymous, authenticated;

