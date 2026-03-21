-- Revert: schemas/agentic_db_app_public/tables/template_chunks/columns/entity_id/alterations/alt0000004695


ALTER TABLE agentic_db_app_public.template_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


