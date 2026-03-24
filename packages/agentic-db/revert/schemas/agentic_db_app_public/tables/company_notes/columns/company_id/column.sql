-- Revert: schemas/agentic_db_app_public/tables/company_notes/columns/company_id/column


ALTER TABLE agentic_db_app_public.company_notes 
  DROP COLUMN company_id RESTRICT;


