-- Revert: schemas/agentic_db_app_public/tables/deal_companies/columns/entity_id/alterations/alt0000001209


ALTER TABLE "agentic_db_app_public".deal_companies 
  ALTER COLUMN entity_id DROP NOT NULL;


