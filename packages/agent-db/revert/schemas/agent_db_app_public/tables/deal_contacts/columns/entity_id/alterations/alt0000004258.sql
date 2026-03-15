-- Revert: schemas/agent_db_app_public/tables/deal_contacts/columns/entity_id/alterations/alt0000004258


ALTER TABLE "agent_db_app_public".deal_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


