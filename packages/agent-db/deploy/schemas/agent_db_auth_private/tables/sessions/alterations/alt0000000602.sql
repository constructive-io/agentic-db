-- Deploy: schemas/agent_db_auth_private/tables/sessions/alterations/alt0000000602
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table


ALTER TABLE agent_db_auth_private.sessions 
  DISABLE ROW LEVEL SECURITY;

