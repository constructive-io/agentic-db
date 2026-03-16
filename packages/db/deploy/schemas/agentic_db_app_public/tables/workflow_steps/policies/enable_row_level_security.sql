-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/tags/column


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ENABLE ROW LEVEL SECURITY;

