-- Revert: schemas/agent_db_app_public/tables/company_links/columns/company_id/column


ALTER TABLE "agent_db_app_public".company_links 
  DROP COLUMN company_id RESTRICT;


