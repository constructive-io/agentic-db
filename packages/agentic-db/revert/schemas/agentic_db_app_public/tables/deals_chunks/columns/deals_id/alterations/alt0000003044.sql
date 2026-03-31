-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/deals_id/alterations/alt0000003044


ALTER TABLE agentic_db_app_public.deals_chunks 
  ALTER COLUMN deals_id DROP NOT NULL;


