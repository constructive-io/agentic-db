-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/alterations/alt0000003798
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table


ALTER TABLE "agent_db_auth_private".session_credentials 
  DISABLE ROW LEVEL SECURITY;

