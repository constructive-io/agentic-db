-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/entity_id/alterations/alt0000005773


ALTER TABLE agentic_db_app_public.codebases_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


