-- Revert: schemas/agent_db_app_public/tables/contacts/columns/tags/column


ALTER TABLE "agent_db_app_public".contacts 
  DROP COLUMN tags RESTRICT;


