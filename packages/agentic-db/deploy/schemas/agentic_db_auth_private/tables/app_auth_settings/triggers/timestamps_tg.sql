-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_auth_private.app_auth_settings
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

