-- Revert: schemas/agentic_db_app_public/tables/deal_companies/columns/entity_id/column


ALTER TABLE agentic_db_app_public.deal_companies 
  DROP COLUMN entity_id RESTRICT;


