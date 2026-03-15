-- Revert: schemas/agent_db_app_public/tables/deals/columns/embedding/column


ALTER TABLE agent_db_app_public.deals 
  DROP COLUMN embedding RESTRICT;


