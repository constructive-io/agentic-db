-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/updated_at/alterations/alt0000001145
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/updated_at/column


ALTER TABLE agentic_db_app_public.activity_logs 
  ALTER COLUMN updated_at SET NOT NULL;

