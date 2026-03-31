-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/content/alterations/alt0000003173


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  ALTER COLUMN content DROP NOT NULL;


