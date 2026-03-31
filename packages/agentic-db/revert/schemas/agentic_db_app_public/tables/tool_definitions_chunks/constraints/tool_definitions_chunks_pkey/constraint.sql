-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/constraints/tool_definitions_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  DROP CONSTRAINT tool_definitions_chunks_pkey;


