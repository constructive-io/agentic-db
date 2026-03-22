-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/id/alterations/alt0000005304
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/id/column



ALTER TABLE agentic_db_auth_private.session_credentials 
    ALTER COLUMN id SET DEFAULT uuidv7();

