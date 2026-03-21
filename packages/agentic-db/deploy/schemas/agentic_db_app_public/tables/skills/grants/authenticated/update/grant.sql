-- Deploy: schemas/agentic_db_app_public/tables/skills/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/embedding/column


GRANT UPDATE ON "agentic_db_app_public".skills TO authenticated;

