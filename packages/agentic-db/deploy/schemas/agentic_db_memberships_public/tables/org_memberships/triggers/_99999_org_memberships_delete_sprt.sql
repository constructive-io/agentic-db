-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/triggers/_99999_org_memberships_delete_sprt
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_private/trigger_fns/org_memberships_delete_sprt_tg


CREATE TRIGGER _99999_org_memberships_delete_sprt
AFTER DELETE ON "agentic_db_memberships_public".org_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_memberships_private".org_memberships_delete_sprt_tg ( );

