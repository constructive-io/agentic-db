-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/updated_at/alterations/alt0000001125


ALTER TABLE "agentic_db_app_public".sessions 
  ALTER COLUMN updated_at DROP NOT NULL;


