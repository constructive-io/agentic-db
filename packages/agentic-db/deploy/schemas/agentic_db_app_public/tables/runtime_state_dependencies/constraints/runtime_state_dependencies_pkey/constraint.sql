-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_dependencies/constraints/runtime_state_dependencies_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE "agentic_db_app_public".runtime_state_dependencies 
  ADD CONSTRAINT runtime_state_dependencies_pkey PRIMARY KEY (id);

