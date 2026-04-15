-- Deploy: schemas/agentic_db_app_public/tables/notes/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table


GRANT INSERT ON "agentic_db_app_public".notes TO authenticated;

