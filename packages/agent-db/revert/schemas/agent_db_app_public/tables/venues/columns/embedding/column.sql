-- Revert: schemas/agent_db_app_public/tables/venues/columns/embedding/column


ALTER TABLE agent_db_app_public.venues 
  DROP COLUMN embedding RESTRICT;


