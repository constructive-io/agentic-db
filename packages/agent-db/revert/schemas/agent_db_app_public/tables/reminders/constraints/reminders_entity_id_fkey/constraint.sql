-- Revert: schemas/agent_db_app_public/tables/reminders/constraints/reminders_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.reminders 
  DROP CONSTRAINT reminders_entity_id_fkey;


