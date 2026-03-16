-- Revert: schemas/agent_db_app_public/tables/companies/columns/entity_id/column


ALTER TABLE "agent_db_app_public".companies 
  DROP COLUMN entity_id RESTRICT;


