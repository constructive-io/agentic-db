-- Deploy: schemas/agentic_db_app_public/tables/recipe_chunks/columns/recipe_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/table
-- requires: schemas/agentic_db_app_public/tables/list_chunks/indexes/list_chunks_list_id_idx


ALTER TABLE "agentic_db_app_public".recipe_chunks 
  ADD COLUMN recipe_id uuid;

