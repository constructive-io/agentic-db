-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/columns/chunk_index/alterations/alt0000004318


ALTER TABLE agentic_db_app_public.tool_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


