-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/id/alterations/alt0000002636


ALTER TABLE agentic_db_app_public.deals_chunks 
  ALTER COLUMN id DROP NOT NULL;


