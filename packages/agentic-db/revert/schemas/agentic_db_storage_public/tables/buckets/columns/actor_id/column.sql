-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/actor_id/column


ALTER TABLE agentic_db_storage_public.buckets 
  DROP COLUMN actor_id RESTRICT;


