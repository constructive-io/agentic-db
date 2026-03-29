-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/deal_id/column


ALTER TABLE agentic_db_app_public.deals_chunks 
  DROP COLUMN deal_id RESTRICT;


