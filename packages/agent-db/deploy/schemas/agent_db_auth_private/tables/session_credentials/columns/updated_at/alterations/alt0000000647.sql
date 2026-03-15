-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/updated_at/alterations/alt0000000647
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/updated_at/column


ALTER TABLE agent_db_auth_private.session_credentials 
  ALTER COLUMN updated_at SET DEFAULT now();

