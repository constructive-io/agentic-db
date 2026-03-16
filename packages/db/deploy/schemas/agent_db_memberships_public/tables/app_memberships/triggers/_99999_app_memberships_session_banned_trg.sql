-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/triggers/_99999_app_memberships_session_banned_trg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_auth_private/trigger_fns/app_memberships_session_banned_tg


CREATE TRIGGER _99999_app_memberships_session_banned_trg
AFTER UPDATE ON "agent_db_memberships_public".app_memberships
FOR EACH ROW
WHEN ((OLD.is_disabled IS DISTINCT FROM NEW.is_disabled OR OLD.is_banned IS DISTINCT FROM NEW.is_banned) AND (NEW.is_disabled IS TRUE OR NEW.is_banned IS TRUE))
EXECUTE PROCEDURE "agent_db_auth_private".app_memberships_session_banned_tg ( );

