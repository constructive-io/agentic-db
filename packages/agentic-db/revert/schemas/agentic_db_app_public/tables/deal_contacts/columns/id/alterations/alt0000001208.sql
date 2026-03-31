-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/columns/id/alterations/alt0000001208


ALTER TABLE "agentic_db_app_public".deal_contacts 
  ALTER COLUMN id DROP NOT NULL;


