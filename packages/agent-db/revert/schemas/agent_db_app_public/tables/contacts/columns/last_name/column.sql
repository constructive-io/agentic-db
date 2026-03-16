-- Revert: schemas/agent_db_app_public/tables/contacts/columns/last_name/column


ALTER TABLE "agent_db_app_public".contacts 
  DROP COLUMN last_name RESTRICT;


