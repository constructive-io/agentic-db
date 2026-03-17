-- Deploy: schemas/agentic_db_app_public/tables/workflows/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/embedding/column


GRANT UPDATE ON "agentic_db_app_public".workflows TO authenticated;

