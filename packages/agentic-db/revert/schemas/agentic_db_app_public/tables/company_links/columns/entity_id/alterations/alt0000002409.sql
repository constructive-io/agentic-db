-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/entity_id/alterations/alt0000002409


ALTER TABLE agentic_db_app_public.company_links 
  ALTER COLUMN entity_id DROP NOT NULL;


