-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permission_defaults/triggers/app_permission_defaults_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permission_defaults/table


CREATE TRIGGER app_permission_defaults_insert_trg
BEFORE INSERT ON "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permission_defaults
FOR EACH ROW
EXECUTE PROCEDURE utils.ensure_singleton ( );

