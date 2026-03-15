-- Revert: schemas/agent_db_app_public/tables/recipes/columns/updated_at/alterations/alt0000004766


ALTER TABLE "agent_db_app_public".recipes 
  ALTER COLUMN updated_at DROP NOT NULL;


