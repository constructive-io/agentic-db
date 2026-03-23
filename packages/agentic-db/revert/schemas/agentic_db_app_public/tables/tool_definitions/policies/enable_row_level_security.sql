-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.tool_definitions 
  DISABLE ROW LEVEL SECURITY;


