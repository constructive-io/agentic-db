-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/status/alterations/alt0000004366
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/projects/columns/description/column



ALTER TABLE agentic_db_app_public.projects 
    ALTER COLUMN status SET DEFAULT 'active';

