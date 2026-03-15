-- Revert: schemas/agent_db_app_public/tables/contacts/columns/entity_id/alterations/alt0000002565


ALTER TABLE "agent_db_app_public".contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


