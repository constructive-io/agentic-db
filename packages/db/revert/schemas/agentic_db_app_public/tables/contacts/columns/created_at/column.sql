-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/created_at/column


ALTER TABLE "agentic_db_app_public".contacts 
  DROP COLUMN created_at RESTRICT;


