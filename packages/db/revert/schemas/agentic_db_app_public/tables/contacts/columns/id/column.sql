-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/id/column


ALTER TABLE "agentic_db_app_public".contacts 
  DROP COLUMN id RESTRICT;


