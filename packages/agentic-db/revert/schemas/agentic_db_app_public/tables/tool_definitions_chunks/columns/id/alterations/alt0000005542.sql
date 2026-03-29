-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/id/alterations/alt0000005542


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  ALTER COLUMN id DROP NOT NULL;


