-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.autonomy_records 
  DROP COLUMN embedding_text RESTRICT;


