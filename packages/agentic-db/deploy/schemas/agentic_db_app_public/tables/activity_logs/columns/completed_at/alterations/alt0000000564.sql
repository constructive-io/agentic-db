-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/completed_at/alterations/alt0000000564
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/completed_at/column


ALTER TABLE agentic_db_app_public.activity_logs 
  ALTER COLUMN completed_at SET NOT NULL;

