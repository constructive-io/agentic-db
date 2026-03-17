-- Deploy: schemas/agentic_db_app_public/tables/sessions/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/embedding/column


GRANT DELETE ON "agentic_db_app_public".sessions TO authenticated;

