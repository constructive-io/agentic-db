-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/triggers/app_auth_settings_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/table


CREATE TRIGGER app_auth_settings_insert_trg
AFTER INSERT ON "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings
FOR EACH ROW
EXECUTE PROCEDURE utils.ensure_singleton ( );

