-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/entity_id/alterations/alt0000004635
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/entity_id/column


ALTER TABLE agentic_db_app_public.recipes 
  ALTER COLUMN entity_id SET NOT NULL;

