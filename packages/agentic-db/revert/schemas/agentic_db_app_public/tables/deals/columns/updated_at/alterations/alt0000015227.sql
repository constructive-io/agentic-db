-- Revert: schemas/agentic_db_app_public/tables/deals/columns/updated_at/alterations/alt0000015227


ALTER TABLE agentic_db_app_public.deals 
  ALTER COLUMN updated_at DROP NOT NULL;


