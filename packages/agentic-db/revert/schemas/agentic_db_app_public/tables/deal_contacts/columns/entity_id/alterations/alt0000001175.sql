-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/columns/entity_id/alterations/alt0000001175


ALTER TABLE "agentic_db_app_public".deal_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


