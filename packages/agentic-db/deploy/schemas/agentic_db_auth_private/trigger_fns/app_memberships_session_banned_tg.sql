-- Deploy: schemas/agentic_db_auth_private/trigger_fns/app_memberships_session_banned_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table


CREATE FUNCTION agentic_db_auth_private.app_memberships_session_banned_tg() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  UPDATE agentic_db_auth_private.sessions SET
  revoked_at = now()
  WHERE
    user_id = NEW.actor_id AND revoked_at IS NULL;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql;

