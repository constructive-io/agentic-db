-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/indexes/activity_logs_completed_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/completed_at/column


CREATE INDEX activity_logs_completed_at_idx ON agentic_db_app_public.activity_logs USING BTREE ( completed_at );

