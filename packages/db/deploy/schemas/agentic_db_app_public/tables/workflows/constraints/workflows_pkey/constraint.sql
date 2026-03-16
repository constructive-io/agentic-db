-- Deploy: schemas/agentic_db_app_public/tables/workflows/constraints/workflows_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/embedding/column


ALTER TABLE "agentic_db_app_public".workflows 
  ADD CONSTRAINT workflows_pkey PRIMARY KEY (id);

