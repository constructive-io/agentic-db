-- Revert: schemas/agentic_db_app_public/tables/email_notes/columns/email_id/alterations/alt0000002097


ALTER TABLE "agentic_db_app_public".email_notes 
  ALTER COLUMN email_id DROP NOT NULL;


