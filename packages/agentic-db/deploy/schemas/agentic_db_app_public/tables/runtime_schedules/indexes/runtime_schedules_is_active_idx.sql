-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/indexes/runtime_schedules_is_active_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/is_active/column


CREATE INDEX runtime_schedules_is_active_idx ON agentic_db_app_public.runtime_schedules USING BTREE ( is_active );

