-- Revert: schemas/agent_db_app_public/tables/recipes/columns/created_at/alterations/alt0000002346


ALTER TABLE "agent_db_app_public".recipes 
  ALTER COLUMN created_at DROP NOT NULL;


