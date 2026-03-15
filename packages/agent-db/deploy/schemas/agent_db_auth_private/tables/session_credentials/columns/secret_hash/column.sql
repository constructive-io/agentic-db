-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/secret_hash/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table


ALTER TABLE "agent_db_auth_private".session_credentials 
  ADD COLUMN secret_hash bytea;

