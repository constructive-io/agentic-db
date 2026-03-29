-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/created_at/alterations/alt0000005547


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


