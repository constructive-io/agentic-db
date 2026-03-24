-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.deals_chunks 
  DROP COLUMN updated_at RESTRICT;


