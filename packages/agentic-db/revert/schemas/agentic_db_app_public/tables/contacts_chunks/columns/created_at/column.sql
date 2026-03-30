-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".contacts_chunks 
  DROP COLUMN created_at RESTRICT;


