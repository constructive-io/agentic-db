-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/columns/tool_id/alterations/alt0000004354


ALTER TABLE agentic_db_app_public.tool_chunks 
  ALTER COLUMN tool_id DROP NOT NULL;


