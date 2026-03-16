-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table


ALTER TABLE "agent_db_auth_private".session_credentials 
  ADD COLUMN name text;

