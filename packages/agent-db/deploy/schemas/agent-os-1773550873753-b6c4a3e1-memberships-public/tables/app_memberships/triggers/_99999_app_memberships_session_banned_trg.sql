-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/triggers/_99999_app_memberships_session_banned_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/trigger_fns/app_memberships_session_banned_tg


CREATE TRIGGER _99999_app_memberships_session_banned_trg
AFTER UPDATE ON "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships
FOR EACH ROW
WHEN ((OLD.is_disabled IS DISTINCT FROM NEW.is_disabled OR OLD.is_banned IS DISTINCT FROM NEW.is_banned) AND (NEW.is_disabled IS TRUE OR NEW.is_banned IS TRUE))
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-auth-private".app_memberships_session_banned_tg ( );

