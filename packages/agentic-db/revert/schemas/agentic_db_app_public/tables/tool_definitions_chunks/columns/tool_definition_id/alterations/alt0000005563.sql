-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/tool_definition_id/alterations/alt0000005563


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  ALTER COLUMN tool_definition_id DROP NOT NULL;


