-- Deploy: schemas/agentic_db_app_public/tables/deal_companies/columns/id/alterations/alt0000001215
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_companies/table
-- requires: schemas/agentic_db_app_public/tables/deal_companies/columns/id/column


ALTER TABLE "agentic_db_app_public".deal_companies 
  ALTER COLUMN id SET NOT NULL;

