-- Revert: schemas/agentic_db_app_public/tables/company_notes/columns/id/alterations/alt0000001774


ALTER TABLE "agentic_db_app_public".company_notes 
  ALTER COLUMN id DROP NOT NULL;


