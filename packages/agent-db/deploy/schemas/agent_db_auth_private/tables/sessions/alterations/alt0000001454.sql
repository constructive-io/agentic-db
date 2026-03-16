-- Deploy: schemas/agent_db_auth_private/tables/sessions/alterations/alt0000001454
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table


ALTER TABLE "agent_db_auth_private".sessions 
  DISABLE ROW LEVEL SECURITY;

