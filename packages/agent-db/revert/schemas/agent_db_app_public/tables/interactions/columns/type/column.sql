-- Revert: schemas/agent_db_app_public/tables/interactions/columns/type/column


ALTER TABLE agent_db_app_public.interactions 
  DROP COLUMN type RESTRICT;


