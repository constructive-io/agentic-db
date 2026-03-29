-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  DISABLE ROW LEVEL SECURITY;


