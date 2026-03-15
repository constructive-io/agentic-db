-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permissions/triggers/org_permissions_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permissions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-private/trigger_fns/org_permissions_bitnum_tg


CREATE TRIGGER org_permissions_insert_trg
BEFORE INSERT ON "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-permissions-private".org_permissions_bitnum_tg ( );

