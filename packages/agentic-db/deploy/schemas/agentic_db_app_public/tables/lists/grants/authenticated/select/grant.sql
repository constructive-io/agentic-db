-- Deploy: schemas/agentic_db_app_public/tables/lists/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/tags/column


GRANT SELECT ON "agentic_db_app_public".lists TO authenticated;

