-- Revert: schemas/agentic_db_app_public/tables/companies/columns/embedding/column


ALTER TABLE agentic_db_app_public.companies 
  DROP COLUMN embedding RESTRICT;


