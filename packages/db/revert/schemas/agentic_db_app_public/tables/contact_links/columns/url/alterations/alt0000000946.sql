-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/url/alterations/alt0000000946


ALTER TABLE "agentic_db_app_public".contact_links 
  ALTER COLUMN url DROP NOT NULL;


