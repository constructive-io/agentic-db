-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/constraints/skill_tools_tool_definition_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.skill_tools 
  ADD CONSTRAINT skill_tools_tool_definition_id_fkey 
    FOREIGN KEY(tool_definition_id) 
    REFERENCES agentic_db_app_public.tool_definitions (id) 
    ON DELETE CASCADE;

