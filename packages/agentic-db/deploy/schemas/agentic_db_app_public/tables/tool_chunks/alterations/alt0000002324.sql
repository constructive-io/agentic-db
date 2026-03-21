-- Deploy: schemas/agentic_db_app_public/tables/tool_chunks/alterations/alt0000002324
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/table
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".tool_chunks 
  DISABLE ROW LEVEL SECURITY;

