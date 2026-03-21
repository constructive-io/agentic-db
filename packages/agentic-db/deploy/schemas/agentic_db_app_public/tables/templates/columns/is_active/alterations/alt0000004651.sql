-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/is_active/alterations/alt0000004651
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/templates/columns/variables/column



ALTER TABLE agentic_db_app_public.templates 
    ALTER COLUMN is_active SET DEFAULT true;

