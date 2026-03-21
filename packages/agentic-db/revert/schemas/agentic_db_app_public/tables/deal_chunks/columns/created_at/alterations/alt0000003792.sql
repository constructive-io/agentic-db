-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/created_at/alterations/alt0000003792


ALTER TABLE agentic_db_app_public.deal_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


