-- Deploy: schemas/agentic_db_auth_public/procedures/verify_email/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table


CREATE FUNCTION agentic_db_auth_public.verify_email(
  IN email_id uuid,
  IN token text
) RETURNS boolean AS $_PGFN_$
DECLARE
  v_email agentic_db_user_identifiers_public.emails;
  v_user_id uuid;
  v_verification_expires_interval interval := '3 days'::interval;
  verification_token_name text;
  verification_email_attempts int;
  verification_email_sent_at timestamptz;
  first_failed_verification_email_attempt timestamptz;
BEGIN
  SELECT *
  FROM agentic_db_user_identifiers_public.emails AS e
  WHERE
    e.id = verify_email.email_id INTO v_email;
  IF v_email.is_verified IS TRUE THEN
    RETURN true;
  END IF;
  IF NOT (FOUND) THEN
    RETURN false;
  END IF;
  v_user_id := v_email.owner_id;
  verification_email_sent_at := agentic_db_simple_secrets.get(v_user_id, 'verification_email_sent_at');
  IF verification_email_sent_at IS NOT NULL AND (verification_email_sent_at + v_verification_expires_interval) < now() THEN
    PERFORM agentic_db_simple_secrets.del(v_user_id, ARRAY['verification_email_sent_at', 'verification_email_attempts', 'first_failed_verification_email_attempt']);
    PERFORM agentic_db_encrypted.del(v_user_id, verification_token_name);
    RETURN false;
  END IF;
  verification_token_name := v_email.email::text || '_verification_token';
  IF agentic_db_encrypted.verify(v_user_id, verification_token_name, verify_email.token) THEN
    UPDATE agentic_db_user_identifiers_public.emails AS e SET
    is_verified = true
    WHERE
      e.id = verify_email.email_id;
    UPDATE agentic_db_memberships_public.app_memberships SET
    is_verified = true
    WHERE
      actor_id = v_user_id;
    PERFORM agentic_db_simple_secrets.del(v_user_id, ARRAY['verification_email_sent_at', 'verification_email_attempts', 'first_failed_verification_email_attempt']);
    PERFORM agentic_db_encrypted.del(v_user_id, verification_token_name);
    RETURN true;
  ELSE
    IF first_failed_verification_email_attempt IS NULL OR (first_failed_verification_email_attempt + v_verification_expires_interval) < now() THEN
      verification_email_attempts := 1;
      first_failed_verification_email_attempt := now();
    ELSE
      verification_email_attempts := verification_email_attempts + 1;
    END IF;
    PERFORM agentic_db_simple_secrets.set(v_user_id, 'verification_email_attempts', verification_email_attempts);
    PERFORM agentic_db_simple_secrets.set(v_user_id, 'first_failed_verification_email_attempt', first_failed_verification_email_attempt);
    RETURN false;
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

