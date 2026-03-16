-- Revert: schemas/agent_db_app_public/tables/integrations/constraints/integrations_pkey/constraint


ALTER TABLE "agent_db_app_public".integrations 
  DROP CONSTRAINT integrations_pkey;


