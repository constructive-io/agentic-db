-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/triggers/_99990_org_memberships_owners_chk
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_private/trigger_fns/org_memberships_dtg


CREATE TRIGGER _99990_org_memberships_owners_chk
BEFORE DELETE ON "agent_db_memberships_public".org_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent_db_memberships_private".org_memberships_dtg ( );

