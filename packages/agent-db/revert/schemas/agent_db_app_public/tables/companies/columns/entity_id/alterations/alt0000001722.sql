-- Revert: schemas/agent_db_app_public/tables/companies/columns/entity_id/alterations/alt0000001722


ALTER TABLE "agent_db_app_public".companies 
  ALTER COLUMN entity_id DROP NOT NULL;


