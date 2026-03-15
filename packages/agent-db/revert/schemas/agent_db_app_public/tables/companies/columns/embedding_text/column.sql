-- Revert: schemas/agent_db_app_public/tables/companies/columns/embedding_text/column


ALTER TABLE agent_db_app_public.companies 
  DROP COLUMN embedding_text RESTRICT;


