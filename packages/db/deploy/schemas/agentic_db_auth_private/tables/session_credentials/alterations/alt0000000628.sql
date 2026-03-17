-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/alterations/alt0000000628
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table


ALTER TABLE "agentic_db_auth_private".session_credentials 
  DISABLE ROW LEVEL SECURITY;

