-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/indexes/session_credentials_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/updated_at/column


CREATE INDEX session_credentials_updated_at_idx ON agentic_db_auth_private.session_credentials ( updated_at );

