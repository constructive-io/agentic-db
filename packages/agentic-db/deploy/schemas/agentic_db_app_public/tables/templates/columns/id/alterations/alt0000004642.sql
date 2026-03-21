-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/id/alterations/alt0000004642
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/embedding/column


ALTER TABLE agentic_db_app_public.templates 
  ALTER COLUMN id SET NOT NULL;

