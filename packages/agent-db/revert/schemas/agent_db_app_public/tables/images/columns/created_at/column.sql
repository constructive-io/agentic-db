-- Revert: schemas/agent_db_app_public/tables/images/columns/created_at/column


ALTER TABLE agent_db_app_public.images 
  DROP COLUMN created_at RESTRICT;


