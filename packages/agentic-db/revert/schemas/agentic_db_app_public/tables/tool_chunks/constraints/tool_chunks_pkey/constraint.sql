-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/constraints/tool_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.tool_chunks 
  DROP CONSTRAINT tool_chunks_pkey;


