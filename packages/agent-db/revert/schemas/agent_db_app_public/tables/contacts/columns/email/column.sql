-- Revert: schemas/agent_db_app_public/tables/contacts/columns/email/column


ALTER TABLE "agent_db_app_public".contacts 
  DROP COLUMN email RESTRICT;


