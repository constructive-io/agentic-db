-- Deploy: schemas/agentic_db_app_public/tables/recipe_chunks/constraints/recipe_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/table
-- requires: schemas/agentic_db_app_public/tables/list_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.recipe_chunks 
  ADD CONSTRAINT recipe_chunks_pkey PRIMARY KEY (id);

