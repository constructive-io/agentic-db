-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".company_links 
  DROP COLUMN entity_id RESTRICT;


