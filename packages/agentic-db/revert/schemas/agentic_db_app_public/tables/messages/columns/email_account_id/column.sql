-- Revert: schemas/agentic_db_app_public/tables/messages/columns/email_account_id/column


ALTER TABLE "agentic_db_app_public".messages 
  DROP COLUMN email_account_id RESTRICT;


