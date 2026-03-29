-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/deal_id/alterations/alt0000005366


ALTER TABLE agentic_db_app_public.deals_chunks 
  ALTER COLUMN deal_id DROP NOT NULL;


