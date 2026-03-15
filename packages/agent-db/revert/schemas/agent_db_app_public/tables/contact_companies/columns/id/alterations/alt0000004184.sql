-- Revert: schemas/agent_db_app_public/tables/contact_companies/columns/id/alterations/alt0000004184


ALTER TABLE "agent_db_app_public".contact_companies 
  ALTER COLUMN id DROP NOT NULL;


