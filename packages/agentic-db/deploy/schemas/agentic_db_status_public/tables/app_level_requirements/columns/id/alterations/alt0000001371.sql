-- Deploy: schemas/agentic_db_status_public/tables/app_level_requirements/columns/id/alterations/alt0000001371
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/columns/id/column



ALTER TABLE agentic_db_status_public.app_level_requirements 
    ALTER COLUMN id SET DEFAULT uuidv7();

