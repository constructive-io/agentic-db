-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/id/alterations/alt0000004653


ALTER TABLE agentic_db_app_public.idea_chunks 
  ALTER COLUMN id DROP NOT NULL;


