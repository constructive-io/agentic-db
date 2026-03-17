-- Deploy: schemas/agentic_db_app_public/tables/agent_tools/constraints/agent_tools_tool_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/agent_tools/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".agent_tools 
  ADD CONSTRAINT agent_tools_tool_id_fkey 
    FOREIGN KEY(tool_id) 
    REFERENCES "agentic_db_app_public".tools (id) 
    ON DELETE CASCADE;

