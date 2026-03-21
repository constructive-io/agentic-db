-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/last_synced_at/column


ALTER TABLE agentic_db_app_public.repositories 
  DROP COLUMN last_synced_at RESTRICT;


