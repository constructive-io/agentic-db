-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE agentic_db_app_public.tool_definitions 
  ENABLE ROW LEVEL SECURITY;

