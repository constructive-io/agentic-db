-- Revert: schemas/agentic_db_app_public/tables/company_notes/columns/company_id/alterations/alt0000013637


ALTER TABLE agentic_db_app_public.company_notes 
  ALTER COLUMN company_id DROP NOT NULL;


