-- Revert: schemas/agentic_db_app_public/tables/company_notes/columns/entity_id/alterations/alt0000011485


ALTER TABLE agentic_db_app_public.company_notes 
  ALTER COLUMN entity_id DROP NOT NULL;


