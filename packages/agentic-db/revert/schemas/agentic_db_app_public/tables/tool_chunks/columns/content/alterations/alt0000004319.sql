-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/columns/content/alterations/alt0000004319


ALTER TABLE agentic_db_app_public.tool_chunks 
  ALTER COLUMN content DROP NOT NULL;


