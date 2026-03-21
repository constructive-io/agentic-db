-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/id/alterations/alt0000002647


ALTER TABLE "agentic_db_app_public".recipes 
  ALTER COLUMN id DROP NOT NULL;


