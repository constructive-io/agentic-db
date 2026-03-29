-- Revert: schemas/agentic_db_app_public/tables/email_recipients/columns/id/alterations/alt0000001663


ALTER TABLE "agentic_db_app_public".email_recipients 
  ALTER COLUMN id DROP NOT NULL;


