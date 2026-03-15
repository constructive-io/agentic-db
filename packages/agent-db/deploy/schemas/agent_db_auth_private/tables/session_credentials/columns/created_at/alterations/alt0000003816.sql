-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/created_at/alterations/alt0000003816
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/created_at/column


ALTER TABLE "agent_db_auth_private".session_credentials 
  ALTER COLUMN created_at SET DEFAULT now();

