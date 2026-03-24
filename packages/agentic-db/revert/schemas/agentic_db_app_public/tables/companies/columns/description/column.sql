-- Revert: schemas/agentic_db_app_public/tables/companies/columns/description/column


ALTER TABLE agentic_db_app_public.companies 
  DROP COLUMN description RESTRICT;


