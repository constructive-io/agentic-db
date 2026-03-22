-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/meta/column


GRANT SELECT ON "agentic_db_app_public".runtime_schedules TO authenticated;

