-- Revert: schemas/agent_db_app_public/tables/habits/columns/updated_at/column


ALTER TABLE agent_db_app_public.habits 
  DROP COLUMN updated_at RESTRICT;


