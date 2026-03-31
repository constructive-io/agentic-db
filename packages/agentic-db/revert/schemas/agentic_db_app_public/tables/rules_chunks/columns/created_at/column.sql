-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.rules_chunks 
  DROP COLUMN created_at RESTRICT;


