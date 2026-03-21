-- Deploy: schemas/agentic_db_app_public/tables/processes/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/embedding/column


GRANT UPDATE ON agentic_db_app_public.processes TO authenticated;

