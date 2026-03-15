-- Revert: schemas/agent_db_app_public/tables/tools/columns/created_at/column


ALTER TABLE agent_db_app_public.tools 
  DROP COLUMN created_at RESTRICT;


