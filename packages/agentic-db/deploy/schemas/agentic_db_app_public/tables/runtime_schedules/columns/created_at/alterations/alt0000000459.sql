-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/columns/created_at/alterations/alt0000000459
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/created_at/column


COMMENT ON COLUMN agentic_db_app_public.runtime_schedules.created_at IS 'Timestamp when this record was created';

