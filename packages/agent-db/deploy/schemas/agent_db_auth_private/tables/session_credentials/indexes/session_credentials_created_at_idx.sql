-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/indexes/session_credentials_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/created_at/column


CREATE INDEX session_credentials_created_at_idx ON "agent_db_auth_private".session_credentials ( created_at );

