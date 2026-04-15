-- Revert: schemas/agentic_db_app_public/tables/code_chunks/constraints/code_chunks_codebase_id_fkey/constraint


ALTER TABLE agentic_db_app_public.code_chunks 
  DROP CONSTRAINT code_chunks_codebase_id_fkey;


