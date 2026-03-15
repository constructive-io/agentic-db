-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/triggers/app_permissions_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_private/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table
-- requires: schemas/agent_db_permissions_private/trigger_fns/app_permissions_bitnum_tg


CREATE TRIGGER app_permissions_insert_trg
BEFORE INSERT ON agent_db_permissions_public.app_permissions
FOR EACH ROW
EXECUTE PROCEDURE agent_db_permissions_private.app_permissions_bitnum_tg ( );

