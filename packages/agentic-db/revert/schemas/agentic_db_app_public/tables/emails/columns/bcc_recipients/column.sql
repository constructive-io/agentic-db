-- Revert: schemas/agentic_db_app_public/tables/emails/columns/bcc_recipients/column


ALTER TABLE "agentic_db_app_public".emails 
  DROP COLUMN bcc_recipients RESTRICT;


