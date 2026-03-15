-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent_db_memberships_public".org_admin_grants
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

