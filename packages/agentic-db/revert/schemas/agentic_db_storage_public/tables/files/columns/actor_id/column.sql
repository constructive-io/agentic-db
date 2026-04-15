-- Revert: schemas/agentic_db_storage_public/tables/files/columns/actor_id/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN actor_id RESTRICT;


