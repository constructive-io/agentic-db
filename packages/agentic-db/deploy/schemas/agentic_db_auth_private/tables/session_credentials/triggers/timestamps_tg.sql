-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_auth_private.session_credentials
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

