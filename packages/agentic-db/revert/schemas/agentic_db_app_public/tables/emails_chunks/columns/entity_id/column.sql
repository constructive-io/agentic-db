-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.emails_chunks 
  DROP COLUMN entity_id RESTRICT;


