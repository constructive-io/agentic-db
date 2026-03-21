-- Revert: schemas/agentic_db_app_public/tables/calendar_event_chunks/constraints/calendar_event_chunks_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".calendar_event_chunks 
  DROP CONSTRAINT calendar_event_chunks_entity_id_fkey;


