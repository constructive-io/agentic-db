-- Deploy: schemas/agent_db_memberships_public/tables/org_owner_grants/triggers/org_owner_grants_insert_trg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_public/tables/org_owner_grants/table
-- requires: schemas/agent_db_memberships_private/trigger_fns/org_owner_grants_apply_tg


CREATE TRIGGER org_owner_grants_insert_trg
BEFORE INSERT ON "agent_db_memberships_public".org_owner_grants
FOR EACH ROW
EXECUTE PROCEDURE "agent_db_memberships_private".org_owner_grants_apply_tg ( );

