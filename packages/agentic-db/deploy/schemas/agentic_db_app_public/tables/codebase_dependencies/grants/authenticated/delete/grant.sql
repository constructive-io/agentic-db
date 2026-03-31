-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


GRANT DELETE ON "agentic_db_app_public".codebase_dependencies TO authenticated;

