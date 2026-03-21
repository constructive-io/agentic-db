-- Deploy: schemas/agentic_db_app_public/tables/reminders/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/embedding/column


GRANT SELECT ON "agentic_db_app_public".reminders TO authenticated;

