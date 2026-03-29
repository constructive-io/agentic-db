-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.runtime_states 
  DROP COLUMN embedding_text RESTRICT;


