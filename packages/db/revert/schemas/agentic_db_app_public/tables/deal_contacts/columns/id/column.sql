-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/columns/id/column


ALTER TABLE "agentic_db_app_public".deal_contacts 
  DROP COLUMN id RESTRICT;


