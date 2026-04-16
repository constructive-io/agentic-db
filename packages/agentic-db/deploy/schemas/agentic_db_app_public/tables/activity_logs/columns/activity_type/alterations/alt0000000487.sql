-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/activity_type/alterations/alt0000000487
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/activity_type/column


ALTER TABLE agentic_db_app_public.activity_logs 
  ALTER COLUMN activity_type SET NOT NULL;

