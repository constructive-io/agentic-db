-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/columns/deal_id/alterations/alt0000001957


ALTER TABLE "agentic_db_app_public".deal_contacts 
  ALTER COLUMN deal_id DROP NOT NULL;


