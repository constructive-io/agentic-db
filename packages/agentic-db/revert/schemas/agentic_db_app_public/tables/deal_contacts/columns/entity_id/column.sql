-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".deal_contacts 
  DROP COLUMN entity_id RESTRICT;


