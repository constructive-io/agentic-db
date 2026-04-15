-- Deploy: schemas/agentic_db_invites_private/trigger_fns/app_invites_insert_after_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_private/schema


CREATE FUNCTION agentic_db_invites_private.app_invites_insert_after_tg() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  IF NEW.email IS NOT NULL THEN
    PERFORM app_jobs.add_job(jwt_private.current_database_id(), 'send-email-link', json_build_object('invite_table', 'app_invites', 'invite_type', '1', 'email_type', 'invite_email', 'email', NEW.email, 'sender_id', NEW.sender_id, 'invite_token', NEW.invite_token));
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

