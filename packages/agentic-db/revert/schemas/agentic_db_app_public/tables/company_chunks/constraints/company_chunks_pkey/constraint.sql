-- Revert: schemas/agentic_db_app_public/tables/company_chunks/constraints/company_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.company_chunks 
  DROP CONSTRAINT company_chunks_pkey;


