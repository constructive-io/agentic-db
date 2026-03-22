-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.deal_chunks 
  DROP COLUMN created_at RESTRICT;


