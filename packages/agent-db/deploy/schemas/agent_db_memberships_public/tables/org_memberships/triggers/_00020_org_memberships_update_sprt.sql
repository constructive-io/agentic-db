-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/triggers/_00020_org_memberships_update_sprt
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_private/trigger_fns/org_memberships_update_sprt_tg


CREATE TRIGGER _00020_org_memberships_update_sprt
AFTER UPDATE ON "agent_db_memberships_public".org_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent_db_memberships_private".org_memberships_update_sprt_tg ( );

