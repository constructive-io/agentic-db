-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/constraints/repository_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.repository_chunks 
  DROP CONSTRAINT repository_chunks_entity_id_fkey;


