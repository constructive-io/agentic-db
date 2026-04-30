-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/created_at/alterations/alt0000000558
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


COMMENT ON COLUMN agentic_db_app_public.habits.created_at IS 'Timestamp when this record was created';

