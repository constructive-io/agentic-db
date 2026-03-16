-- Revert: schemas/agent_db_app_public/tables/event_notes/columns/entity_id/column


ALTER TABLE "agent_db_app_public".event_notes 
  DROP COLUMN entity_id RESTRICT;


