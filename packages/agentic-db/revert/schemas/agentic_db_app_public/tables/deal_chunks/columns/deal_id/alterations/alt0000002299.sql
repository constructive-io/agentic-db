-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/deal_id/alterations/alt0000002299


ALTER TABLE agentic_db_app_public.deal_chunks 
  ALTER COLUMN deal_id DROP NOT NULL;


