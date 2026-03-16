-- Revert: schemas/agent_db_app_public/tables/event_notes/constraints/event_notes_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".event_notes 
  DROP CONSTRAINT event_notes_entity_id_fkey;


