-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/triggers/org_permissions_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_private/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/table
-- requires: schemas/agent_db_permissions_private/trigger_fns/org_permissions_bitnum_tg


CREATE TRIGGER org_permissions_insert_trg
BEFORE INSERT ON agent_db_permissions_public.org_permissions
FOR EACH ROW
EXECUTE PROCEDURE agent_db_permissions_private.org_permissions_bitnum_tg ( );

