-- Revert: schemas/agent_db_app_public/tables/company_notes/columns/company_id/alterations/alt0000002417


ALTER TABLE "agent_db_app_public".company_notes 
  ALTER COLUMN company_id DROP NOT NULL;


