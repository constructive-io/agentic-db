-- Revert: schemas/agentic_db_app_public/tables/reminders/constraints/reminders_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".reminders 
  DROP CONSTRAINT reminders_entity_id_fkey;


