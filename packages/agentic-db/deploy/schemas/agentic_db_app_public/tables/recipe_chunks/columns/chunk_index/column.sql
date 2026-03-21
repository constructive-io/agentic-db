-- Deploy: schemas/agentic_db_app_public/tables/recipe_chunks/columns/chunk_index/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/table
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/columns/updated_at/alterations/alt0000002703


ALTER TABLE "agentic_db_app_public".recipe_chunks 
  ADD COLUMN chunk_index int;

