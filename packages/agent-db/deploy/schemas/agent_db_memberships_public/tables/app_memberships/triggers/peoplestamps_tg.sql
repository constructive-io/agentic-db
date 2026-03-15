-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/triggers/peoplestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table


CREATE TRIGGER peoplestamps_tg
BEFORE INSERT OR UPDATE ON agent_db_memberships_public.app_memberships
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps ( );

