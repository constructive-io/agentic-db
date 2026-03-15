-- Revert: schemas/agent_db_app_public/tables/deals/columns/name/alterations/alt0000004102


ALTER TABLE "agent_db_app_public".deals 
  ALTER COLUMN name DROP NOT NULL;


