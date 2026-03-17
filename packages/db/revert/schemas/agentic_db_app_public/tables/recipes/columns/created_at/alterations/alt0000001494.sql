-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/created_at/alterations/alt0000001494


ALTER TABLE "agentic_db_app_public".recipes 
  ALTER COLUMN created_at DROP NOT NULL;


