-- Revert: schemas/agentic_db_app_public/tables/template_chunks/columns/template_id/column


ALTER TABLE agentic_db_app_public.template_chunks 
  DROP COLUMN template_id RESTRICT;


