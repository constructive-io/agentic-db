-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_dependencies/constraints/runtime_state_dependencies_dependency_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_tool_definition_id_idx


ALTER TABLE "agentic_db_app_public".runtime_state_dependencies 
  ADD CONSTRAINT runtime_state_dependencies_dependency_id_fkey 
    FOREIGN KEY(dependency_id) 
    REFERENCES "agentic_db_app_public".runtime_states (id) 
    ON DELETE CASCADE;

