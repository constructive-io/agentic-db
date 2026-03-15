-- Revert: schemas/agent_db_app_public/tables/contact_companies/constraints/contact_companies_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_companies 
  DROP CONSTRAINT contact_companies_entity_id_fkey;


