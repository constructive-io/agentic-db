-- Revert: schemas/agent_db_app_public/tables/company_documents/columns/company_id/alterations/alt0000002922


ALTER TABLE "agent_db_app_public".company_documents 
  ALTER COLUMN company_id DROP NOT NULL;


