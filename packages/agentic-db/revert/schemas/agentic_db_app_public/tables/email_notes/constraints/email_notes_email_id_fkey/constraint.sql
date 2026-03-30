-- Revert: schemas/agentic_db_app_public/tables/email_notes/constraints/email_notes_email_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".email_notes 
  DROP CONSTRAINT email_notes_email_id_fkey;


