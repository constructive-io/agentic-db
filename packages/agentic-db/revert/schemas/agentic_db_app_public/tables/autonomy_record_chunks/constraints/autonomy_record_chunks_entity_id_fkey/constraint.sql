-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_chunks/constraints/autonomy_record_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.autonomy_record_chunks 
  DROP CONSTRAINT autonomy_record_chunks_entity_id_fkey;


