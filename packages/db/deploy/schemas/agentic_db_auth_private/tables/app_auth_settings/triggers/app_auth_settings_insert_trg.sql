-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/triggers/app_auth_settings_insert_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table


CREATE TRIGGER app_auth_settings_insert_trg
AFTER INSERT ON "agentic_db_auth_private".app_auth_settings
FOR EACH ROW
EXECUTE PROCEDURE utils.ensure_singleton ( );

