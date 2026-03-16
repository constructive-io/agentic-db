-- Deploy: schemas/agentic_db_memberships_public/tables/org_admin_grants/triggers/org_admin_grants_insert_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_admin_grants/table
-- requires: schemas/agentic_db_memberships_private/trigger_fns/org_admin_grants_apply_tg


CREATE TRIGGER org_admin_grants_insert_trg
BEFORE INSERT ON "agentic_db_memberships_public".org_admin_grants
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_memberships_private".org_admin_grants_apply_tg ( );

