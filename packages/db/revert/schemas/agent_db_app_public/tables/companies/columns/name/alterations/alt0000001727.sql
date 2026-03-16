-- Revert: schemas/agent_db_app_public/tables/companies/columns/name/alterations/alt0000001727


ALTER TABLE "agent_db_app_public".companies 
  ALTER COLUMN name DROP NOT NULL;


