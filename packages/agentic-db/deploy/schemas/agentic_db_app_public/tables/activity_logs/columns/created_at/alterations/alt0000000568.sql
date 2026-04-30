-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/created_at/alterations/alt0000000568
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/created_at/column



ALTER TABLE agentic_db_app_public.activity_logs 
    ALTER COLUMN created_at SET DEFAULT now();

