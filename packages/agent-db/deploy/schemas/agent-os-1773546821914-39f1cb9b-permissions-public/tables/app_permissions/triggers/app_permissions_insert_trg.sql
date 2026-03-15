-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/triggers/app_permissions_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-private/trigger_fns/app_permissions_bitnum_tg


CREATE TRIGGER app_permissions_insert_trg
BEFORE INSERT ON "agent-os-1773546821914-39f1cb9b-permissions-public".app_permissions
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-permissions-private".app_permissions_bitnum_tg ( );

