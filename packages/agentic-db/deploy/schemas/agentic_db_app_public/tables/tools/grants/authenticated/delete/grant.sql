-- Deploy: schemas/agentic_db_app_public/tables/tools/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/last_result/column


GRANT DELETE ON "agentic_db_app_public".tools TO authenticated;

