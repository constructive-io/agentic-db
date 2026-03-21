-- Deploy: schemas/agentic_db_auth_private/tables/sessions/alterations/alt0000003433
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table


ALTER TABLE agentic_db_auth_private.sessions 
  DISABLE ROW LEVEL SECURITY;

