-- Revert: schemas/agent_db_app_public/tables/notifications/columns/created_at/column


ALTER TABLE agent_db_app_public.notifications 
  DROP COLUMN created_at RESTRICT;


