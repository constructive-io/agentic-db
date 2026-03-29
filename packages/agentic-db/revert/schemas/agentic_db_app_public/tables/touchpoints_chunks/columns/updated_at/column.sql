-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  DROP COLUMN updated_at RESTRICT;


