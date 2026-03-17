-- Revert: schemas/agentic_db_app_public/tables/companies/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".companies 
  DROP COLUMN entity_id RESTRICT;


