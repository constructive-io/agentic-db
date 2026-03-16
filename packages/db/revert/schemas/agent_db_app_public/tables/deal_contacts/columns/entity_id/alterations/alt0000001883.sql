-- Revert: schemas/agent_db_app_public/tables/deal_contacts/columns/entity_id/alterations/alt0000001883


ALTER TABLE "agent_db_app_public".deal_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


