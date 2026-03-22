-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/symbol_type/column


ALTER TABLE agentic_db_app_public.code_chunks 
  DROP COLUMN symbol_type RESTRICT;


