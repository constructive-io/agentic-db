-- Revert: schemas/agentic_db_app_public/tables/deal_companies/columns/deal_id/alterations/alt0000015411


ALTER TABLE agentic_db_app_public.deal_companies 
  ALTER COLUMN deal_id DROP NOT NULL;


