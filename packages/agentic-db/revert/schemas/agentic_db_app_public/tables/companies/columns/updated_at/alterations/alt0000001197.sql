-- Revert: schemas/agentic_db_app_public/tables/companies/columns/updated_at/alterations/alt0000001197


ALTER TABLE "agentic_db_app_public".companies 
  ALTER COLUMN updated_at DROP NOT NULL;


