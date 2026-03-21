-- Revert: schemas/agentic_db_app_public/tables/template_chunks/columns/id/column


ALTER TABLE agentic_db_app_public.template_chunks 
  DROP COLUMN id RESTRICT;


