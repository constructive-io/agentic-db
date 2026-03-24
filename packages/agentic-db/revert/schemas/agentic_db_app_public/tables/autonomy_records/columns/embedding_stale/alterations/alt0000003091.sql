-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/embedding_stale/alterations/alt0000003091


ALTER TABLE agentic_db_app_public.autonomy_records 
  ALTER COLUMN embedding_stale DROP NOT NULL;


