-- Revert: schemas/agent_db_app_public/tables/deal_contacts/columns/entity_id/column


ALTER TABLE "agent_db_app_public".deal_contacts 
  DROP COLUMN entity_id RESTRICT;


