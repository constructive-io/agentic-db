-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/entity_id/alterations/alt0000005260


ALTER TABLE agentic_db_app_public.deals_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


