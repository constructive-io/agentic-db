-- Deploy: schemas/agentic_db_app_public/tables/template_chunks/alterations/alt0000002706
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/template_chunks/table
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".template_chunks 
  DISABLE ROW LEVEL SECURITY;

