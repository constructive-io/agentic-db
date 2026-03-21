-- Deploy: schemas/agentic_db_app_public/tables/rules/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/embedding/column


GRANT SELECT ON "agentic_db_app_public".rules TO authenticated;

