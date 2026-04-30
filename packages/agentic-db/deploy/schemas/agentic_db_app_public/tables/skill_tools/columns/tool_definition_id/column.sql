-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/columns/tool_definition_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.skill_tools 
  ADD COLUMN tool_definition_id uuid;

