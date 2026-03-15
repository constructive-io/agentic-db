-- Revert: schemas/agent_db_app_public/tables/company_links/columns/updated_at/column


ALTER TABLE agent_db_app_public.company_links 
  DROP COLUMN updated_at RESTRICT;


