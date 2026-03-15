-- Revert: schemas/agent_db_app_public/tables/notifications/columns/priority/column


ALTER TABLE agent_db_app_public.notifications 
  DROP COLUMN priority RESTRICT;


