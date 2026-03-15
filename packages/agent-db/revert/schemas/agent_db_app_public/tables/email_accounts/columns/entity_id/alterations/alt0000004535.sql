-- Revert: schemas/agent_db_app_public/tables/email_accounts/columns/entity_id/alterations/alt0000004535


ALTER TABLE "agent_db_app_public".email_accounts 
  ALTER COLUMN entity_id DROP NOT NULL;


