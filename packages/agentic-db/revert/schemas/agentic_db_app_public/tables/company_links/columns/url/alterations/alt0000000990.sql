-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/url/alterations/alt0000000990


ALTER TABLE "agentic_db_app_public".company_links 
  ALTER COLUMN url DROP NOT NULL;


