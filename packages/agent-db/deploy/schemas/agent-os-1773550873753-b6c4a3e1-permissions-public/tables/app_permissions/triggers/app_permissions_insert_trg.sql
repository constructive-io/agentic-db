-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/triggers/app_permissions_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-private/trigger_fns/app_permissions_bitnum_tg


CREATE TRIGGER app_permissions_insert_trg
BEFORE INSERT ON "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permissions
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-permissions-private".app_permissions_bitnum_tg ( );

