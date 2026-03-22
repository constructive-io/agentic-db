-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/last_synced_at/column


ALTER TABLE agentic_db_app_public.codebases 
  DROP COLUMN last_synced_at RESTRICT;


