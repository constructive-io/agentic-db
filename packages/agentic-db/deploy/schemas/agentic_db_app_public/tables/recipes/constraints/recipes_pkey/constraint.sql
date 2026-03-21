-- Deploy: schemas/agentic_db_app_public/tables/recipes/constraints/recipes_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/embedding/column


ALTER TABLE agentic_db_app_public.recipes 
  ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);

