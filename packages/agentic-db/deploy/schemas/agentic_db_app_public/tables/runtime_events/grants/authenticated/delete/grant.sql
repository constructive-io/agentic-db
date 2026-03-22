-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/timezone/alterations/alt0000001384


GRANT DELETE ON "agentic_db_app_public".runtime_events TO authenticated;

