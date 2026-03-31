-- Revert: schemas/agentic_db_app_public/tables/deals/columns/entity_id/alterations/alt0000003032


ALTER TABLE agentic_db_app_public.deals 
  ALTER COLUMN entity_id DROP NOT NULL;


