-- Revert: schemas/agent_db_app_public/tables/company_links/columns/id/alterations/alt0000004127


ALTER TABLE "agent_db_app_public".company_links 
  ALTER COLUMN id DROP NOT NULL;


