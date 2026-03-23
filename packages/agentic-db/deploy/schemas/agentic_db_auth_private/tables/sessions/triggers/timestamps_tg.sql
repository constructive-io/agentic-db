-- Deploy: schemas/agentic_db_auth_private/tables/sessions/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_auth_private.sessions
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

