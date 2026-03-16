-- Revert: schemas/agent_db_app_public/tables/templates/columns/name/alterations/alt0000002359


ALTER TABLE "agent_db_app_public".templates 
  ALTER COLUMN name DROP NOT NULL;


