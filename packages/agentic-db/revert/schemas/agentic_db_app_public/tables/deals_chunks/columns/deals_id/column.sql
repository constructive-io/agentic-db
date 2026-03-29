-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/deals_id/column


ALTER TABLE agentic_db_app_public.deals_chunks 
  DROP COLUMN deals_id RESTRICT;


