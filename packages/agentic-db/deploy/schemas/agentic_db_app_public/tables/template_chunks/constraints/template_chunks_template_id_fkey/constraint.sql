-- Deploy: schemas/agentic_db_app_public/tables/template_chunks/constraints/template_chunks_template_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/template_chunks/table
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/indexes/recipe_chunks_recipe_id_idx


ALTER TABLE "agentic_db_app_public".template_chunks 
  ADD CONSTRAINT template_chunks_template_id_fkey 
    FOREIGN KEY(template_id) 
    REFERENCES "agentic_db_app_public".templates (id) 
    ON DELETE CASCADE;

