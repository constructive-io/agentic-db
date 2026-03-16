-- Revert: schemas/agent_db_app_public/tables/contacts/columns/created_at/column


ALTER TABLE "agent_db_app_public".contacts 
  DROP COLUMN created_at RESTRICT;


