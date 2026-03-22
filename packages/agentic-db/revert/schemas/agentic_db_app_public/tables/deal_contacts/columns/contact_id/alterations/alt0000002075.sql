-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/columns/contact_id/alterations/alt0000002075


ALTER TABLE "agentic_db_app_public".deal_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


