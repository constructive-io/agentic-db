-- Revert: schemas/agent_db_app_public/tables/expenses/columns/entity_id/alterations/alt0000002221


ALTER TABLE "agent_db_app_public".expenses 
  ALTER COLUMN entity_id DROP NOT NULL;


