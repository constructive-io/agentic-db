-- Revert: schemas/agentic_db_app_public/tables/deal_companies/columns/id/alterations/alt0000001215


ALTER TABLE "agentic_db_app_public".deal_companies 
  ALTER COLUMN id DROP NOT NULL;


