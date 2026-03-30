-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/id/alterations/alt0000001104


ALTER TABLE "agentic_db_app_public".company_links 
  ALTER COLUMN id DROP NOT NULL;


