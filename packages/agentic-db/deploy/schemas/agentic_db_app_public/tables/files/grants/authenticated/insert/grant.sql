-- Deploy: schemas/agentic_db_app_public/tables/files/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/embedding/column


GRANT INSERT ON agentic_db_app_public.files TO authenticated;

