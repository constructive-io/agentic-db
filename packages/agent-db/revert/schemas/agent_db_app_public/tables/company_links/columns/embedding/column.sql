-- Revert: schemas/agent_db_app_public/tables/company_links/columns/embedding/column


ALTER TABLE agent_db_app_public.company_links 
  DROP COLUMN embedding RESTRICT;


