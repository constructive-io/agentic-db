-- Revert: schemas/agent_db_app_public/tables/contact_emails/columns/is_primary/column


ALTER TABLE "agent_db_app_public".contact_emails 
  DROP COLUMN is_primary RESTRICT;


