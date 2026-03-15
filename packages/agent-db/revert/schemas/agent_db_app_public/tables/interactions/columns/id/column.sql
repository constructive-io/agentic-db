-- Revert: schemas/agent_db_app_public/tables/interactions/columns/id/column


ALTER TABLE agent_db_app_public.interactions 
  DROP COLUMN id RESTRICT;


