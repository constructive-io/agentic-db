-- Revert: schemas/agent_db_app_public/tables/tags/columns/created_at/column


ALTER TABLE agent_db_app_public.tags 
  DROP COLUMN created_at RESTRICT;


