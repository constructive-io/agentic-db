-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/updated_at/alterations/alt0000003178


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


