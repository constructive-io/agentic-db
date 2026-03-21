-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/id/alterations/alt0000003789


ALTER TABLE agentic_db_app_public.deal_chunks 
  ALTER COLUMN id DROP NOT NULL;


