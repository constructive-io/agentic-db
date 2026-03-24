-- Deploy: schemas/agentic_db_app_public/tables/codebases/constraints/codebases_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE "agentic_db_app_public".codebases 
  ADD CONSTRAINT codebases_pkey PRIMARY KEY (id);

