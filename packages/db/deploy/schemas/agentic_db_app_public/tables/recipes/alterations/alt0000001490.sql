-- Deploy: schemas/agentic_db_app_public/tables/recipes/alterations/alt0000001490
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/embedding/column


ALTER TABLE "agentic_db_app_public".recipes 
  DISABLE ROW LEVEL SECURITY;

