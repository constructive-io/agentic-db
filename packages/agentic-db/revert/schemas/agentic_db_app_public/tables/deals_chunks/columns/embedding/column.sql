-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.deals_chunks 
  DROP COLUMN embedding RESTRICT;


