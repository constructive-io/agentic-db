-- Revert: schemas/agentic_db_app_public/tables/autonomy_records_chunks/constraints/autonomy_records_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.autonomy_records_chunks 
  DROP CONSTRAINT autonomy_records_chunks_entity_id_fkey;


