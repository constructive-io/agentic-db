-- Revert: schemas/agentic_db_app_public/tables/deals/columns/id/alterations/alt0000003030


ALTER TABLE agentic_db_app_public.deals 
  ALTER COLUMN id DROP NOT NULL;


