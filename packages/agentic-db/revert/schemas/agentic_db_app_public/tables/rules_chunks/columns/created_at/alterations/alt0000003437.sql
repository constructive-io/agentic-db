-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/created_at/alterations/alt0000003437


ALTER TABLE agentic_db_app_public.rules_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


