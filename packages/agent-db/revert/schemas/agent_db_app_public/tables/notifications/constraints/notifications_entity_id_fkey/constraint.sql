-- Revert: schemas/agent_db_app_public/tables/notifications/constraints/notifications_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.notifications 
  DROP CONSTRAINT notifications_entity_id_fkey;


