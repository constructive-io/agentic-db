-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/updated_at/alterations/alt0000002383


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


