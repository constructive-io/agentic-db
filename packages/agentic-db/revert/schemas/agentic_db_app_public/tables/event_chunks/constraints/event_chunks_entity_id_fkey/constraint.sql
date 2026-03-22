-- Revert: schemas/agentic_db_app_public/tables/event_chunks/constraints/event_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.event_chunks 
  DROP CONSTRAINT event_chunks_entity_id_fkey;


