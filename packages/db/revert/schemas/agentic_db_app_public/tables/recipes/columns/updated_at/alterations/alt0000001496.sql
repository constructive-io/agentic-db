-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/updated_at/alterations/alt0000001496


ALTER TABLE "agentic_db_app_public".recipes 
  ALTER COLUMN updated_at DROP NOT NULL;


