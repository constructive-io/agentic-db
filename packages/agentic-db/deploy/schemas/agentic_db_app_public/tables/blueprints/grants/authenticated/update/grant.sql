-- Deploy: schemas/agentic_db_app_public/tables/blueprints/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/embedding/column


GRANT UPDATE ON agentic_db_app_public.blueprints TO authenticated;

