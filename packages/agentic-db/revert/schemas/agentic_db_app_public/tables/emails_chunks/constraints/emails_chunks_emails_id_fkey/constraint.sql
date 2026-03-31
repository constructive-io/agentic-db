-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/constraints/emails_chunks_emails_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".emails_chunks 
  DROP CONSTRAINT emails_chunks_emails_id_fkey;


