-- Revert: schemas/agent_db_app_public/tables/recipes/columns/name/alterations/alt0000004768


ALTER TABLE "agent_db_app_public".recipes 
  ALTER COLUMN name DROP NOT NULL;


