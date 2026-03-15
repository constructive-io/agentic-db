-- Revert: schemas/agent_db_app_public/tables/contact_links/columns/url/alterations/alt0000004125


ALTER TABLE "agent_db_app_public".contact_links 
  ALTER COLUMN url DROP NOT NULL;


