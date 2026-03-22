-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/constraints/conversation_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.conversation_chunks 
  DROP CONSTRAINT conversation_chunks_entity_id_fkey;


