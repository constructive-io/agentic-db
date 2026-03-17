-- Deploy: schemas/agentic_db_app_public/tables/sessions/alterations/alt0000001119
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/embedding/column


ALTER TABLE "agentic_db_app_public".sessions 
  DISABLE ROW LEVEL SECURITY;

