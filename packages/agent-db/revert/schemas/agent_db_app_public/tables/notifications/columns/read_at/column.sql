-- Revert: schemas/agent_db_app_public/tables/notifications/columns/read_at/column


ALTER TABLE agent_db_app_public.notifications 
  DROP COLUMN read_at RESTRICT;


