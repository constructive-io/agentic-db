-- Deploy: schemas/agentic_db_app_public/tables/codebases_chunks/constraints/codebases_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE "agentic_db_app_public".codebases_chunks 
  ADD CONSTRAINT codebases_chunks_pkey PRIMARY KEY (id);

