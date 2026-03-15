-- Revert: schemas/agent_db_app_public/tables/contact_emails/columns/contact_id/column


ALTER TABLE "agent_db_app_public".contact_emails 
  DROP COLUMN contact_id RESTRICT;


