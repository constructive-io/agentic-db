-- Deploy: schemas/agentic_db_app_public/tables/workflows/alterations/alt0000001205
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/embedding/column


ALTER TABLE "agentic_db_app_public".workflows 
  DISABLE ROW LEVEL SECURITY;

