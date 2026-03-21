-- Deploy: schemas/agentic_db_app_public/tables/session_chunks/alterations/alt0000002274
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".session_chunks 
  DISABLE ROW LEVEL SECURITY;

