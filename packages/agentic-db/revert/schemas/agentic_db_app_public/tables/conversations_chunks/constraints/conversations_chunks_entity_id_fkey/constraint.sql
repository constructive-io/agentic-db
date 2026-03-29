-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/constraints/conversations_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.conversations_chunks 
  DROP CONSTRAINT conversations_chunks_entity_id_fkey;


