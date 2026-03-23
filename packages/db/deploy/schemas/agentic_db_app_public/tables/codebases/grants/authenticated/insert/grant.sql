-- Deploy: schemas/agentic_db_app_public/tables/codebases/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


GRANT INSERT ON "agentic_db_app_public".codebases TO authenticated;

