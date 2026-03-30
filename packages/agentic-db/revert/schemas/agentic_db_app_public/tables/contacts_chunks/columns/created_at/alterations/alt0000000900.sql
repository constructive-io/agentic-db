-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/created_at/alterations/alt0000000900


ALTER TABLE "agentic_db_app_public".contacts_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


