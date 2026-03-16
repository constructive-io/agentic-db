-- Revert: schemas/agent_db_app_public/tables/company_links/columns/url/alterations/alt0000001807


ALTER TABLE "agent_db_app_public".company_links 
  ALTER COLUMN url DROP NOT NULL;


