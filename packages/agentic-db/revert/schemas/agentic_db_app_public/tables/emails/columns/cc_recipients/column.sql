-- Revert: schemas/agentic_db_app_public/tables/emails/columns/cc_recipients/column


ALTER TABLE "agentic_db_app_public".emails 
  DROP COLUMN cc_recipients RESTRICT;


