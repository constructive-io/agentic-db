-- Revert: schemas/agent_db_app_public/tables/contact_companies/columns/contact_id/alterations/alt0000002680


ALTER TABLE "agent_db_app_public".contact_companies 
  ALTER COLUMN contact_id DROP NOT NULL;


