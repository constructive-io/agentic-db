-- Deploy: schemas/agentic_db_app_public/tables/template_chunks/columns/template_id/alterations/alt0000002720
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/template_chunks/table
-- requires: schemas/agentic_db_app_public/tables/template_chunks/columns/template_id/column
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/indexes/recipe_chunks_recipe_id_idx


ALTER TABLE "agentic_db_app_public".template_chunks 
  ALTER COLUMN template_id SET NOT NULL;

