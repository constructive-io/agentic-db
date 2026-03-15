-- Revert: schemas/agent_db_app_public/tables/notifications/columns/id/column


ALTER TABLE agent_db_app_public.notifications 
  DROP COLUMN id RESTRICT;


