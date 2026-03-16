-- Revert: schemas/agent_db_app_public/tables/companies/columns/name/column


ALTER TABLE "agent_db_app_public".companies 
  DROP COLUMN name RESTRICT;


