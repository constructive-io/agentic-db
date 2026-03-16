-- Revert: schemas/agent_db_app_public/tables/recipes/columns/id/alterations/alt0000002343


ALTER TABLE "agent_db_app_public".recipes 
  ALTER COLUMN id DROP NOT NULL;


