-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/servings/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/cook_time_minutes/column


ALTER TABLE "agentic_db_app_public".recipes 
  ADD COLUMN servings int;

