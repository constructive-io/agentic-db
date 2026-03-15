-- Revert: schemas/agent_db_app_public/tables/notifications/columns/entity_id/column


ALTER TABLE agent_db_app_public.notifications 
  DROP COLUMN entity_id RESTRICT;


