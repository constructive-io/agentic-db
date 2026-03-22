-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/id/alterations/alt0000005562
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/companies/alterations/alt0000005559



ALTER TABLE agentic_db_app_public.deals 
    ALTER COLUMN id SET DEFAULT uuidv7();

