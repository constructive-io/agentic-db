-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".company_chunks 
  DROP COLUMN entity_id RESTRICT;


