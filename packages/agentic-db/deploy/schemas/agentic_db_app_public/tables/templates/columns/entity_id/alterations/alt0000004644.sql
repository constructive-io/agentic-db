-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/entity_id/alterations/alt0000004644
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/templates/columns/entity_id/column


ALTER TABLE agentic_db_app_public.templates 
  ALTER COLUMN entity_id SET NOT NULL;

