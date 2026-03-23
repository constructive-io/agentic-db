-- Deploy: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/columns/created_at/column


CREATE INDEX codebases_chunks_created_at_idx ON "agentic_db_app_public".codebases_chunks ( created_at );

