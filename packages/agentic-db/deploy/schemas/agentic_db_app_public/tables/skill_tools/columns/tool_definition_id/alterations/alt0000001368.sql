-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/columns/tool_definition_id/alterations/alt0000001368
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/columns/tool_definition_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.skill_tools 
  ALTER COLUMN tool_definition_id SET NOT NULL;

