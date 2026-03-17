-- Deploy: schemas/agentic_db_app_public/tables/agent_tools/columns/id/alterations/alt0000001272
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tools/table
-- requires: schemas/agentic_db_app_public/tables/agent_tools/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint



ALTER TABLE "agentic_db_app_public".agent_tools 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

