-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/constraints/workflow_steps_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/tags/column


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ADD CONSTRAINT workflow_steps_pkey PRIMARY KEY (id);

