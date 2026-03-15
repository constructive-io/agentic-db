-- Revert: schemas/agent_db_app_public/tables/companies/columns/search_tsv/column


ALTER TABLE agent_db_app_public.companies 
  DROP COLUMN search_tsv RESTRICT;


