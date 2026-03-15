-- Revert: schemas/agent_db_app_public/tables/reminders/columns/related_entity_id/column


ALTER TABLE "agent_db_app_public".reminders 
  DROP COLUMN related_entity_id RESTRICT;


