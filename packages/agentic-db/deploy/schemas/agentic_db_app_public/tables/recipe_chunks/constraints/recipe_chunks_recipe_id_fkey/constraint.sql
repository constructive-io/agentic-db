-- Deploy: schemas/agentic_db_app_public/tables/recipe_chunks/constraints/recipe_chunks_recipe_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/table
-- requires: schemas/agentic_db_app_public/tables/list_chunks/indexes/list_chunks_list_id_idx


ALTER TABLE agentic_db_app_public.recipe_chunks 
  ADD CONSTRAINT recipe_chunks_recipe_id_fkey 
    FOREIGN KEY(recipe_id) 
    REFERENCES agentic_db_app_public.recipes (id) 
    ON DELETE CASCADE;

