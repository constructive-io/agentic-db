-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/columns/contact_id/alterations/alt0000001152


ALTER TABLE "agentic_db_app_public".deal_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


