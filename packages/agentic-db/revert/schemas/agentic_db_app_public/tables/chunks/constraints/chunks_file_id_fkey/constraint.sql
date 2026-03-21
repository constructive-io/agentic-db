-- Revert: schemas/agentic_db_app_public/tables/chunks/constraints/chunks_file_id_fkey/constraint


ALTER TABLE agentic_db_app_public.chunks 
  DROP CONSTRAINT chunks_file_id_fkey;


