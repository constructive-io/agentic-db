-- Deploy: schemas/agentic_db_app_public/tables/workflows/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/embedding/column


GRANT DELETE ON agentic_db_app_public.workflows TO authenticated;

