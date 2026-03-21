-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/columns/id/alterations/alt0000004379
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/project_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/status/alterations/alt0000004376



ALTER TABLE agentic_db_app_public.project_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

