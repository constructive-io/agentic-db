-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agent_db_memberships_public.app_memberships
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

