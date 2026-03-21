-- Revert: schemas/agentic_db_app_public/tables/tools/columns/updated_at/alterations/alt0000002197


ALTER TABLE "agentic_db_app_public".tools 
  ALTER COLUMN updated_at DROP NOT NULL;


