-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.deals_chunks 
  DROP COLUMN created_at RESTRICT;


