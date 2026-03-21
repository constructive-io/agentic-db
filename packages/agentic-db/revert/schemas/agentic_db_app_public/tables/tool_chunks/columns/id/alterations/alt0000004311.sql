-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/columns/id/alterations/alt0000004311


ALTER TABLE agentic_db_app_public.tool_chunks 
  ALTER COLUMN id DROP NOT NULL;


