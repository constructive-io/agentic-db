-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/indexes/session_credentials_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/updated_at/column


CREATE INDEX session_credentials_updated_at_idx ON agent_db_auth_private.session_credentials ( updated_at );

