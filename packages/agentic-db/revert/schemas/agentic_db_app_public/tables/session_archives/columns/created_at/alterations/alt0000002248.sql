-- Revert: schemas/agentic_db_app_public/tables/session_archives/columns/created_at/alterations/alt0000002248


ALTER TABLE "agentic_db_app_public".session_archives 
  ALTER COLUMN created_at DROP NOT NULL;


