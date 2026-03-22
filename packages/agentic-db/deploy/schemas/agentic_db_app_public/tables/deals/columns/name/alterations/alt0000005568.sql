-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/name/alterations/alt0000005568
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/deals/columns/updated_at/alterations/alt0000005567


ALTER TABLE agentic_db_app_public.deals 
  ALTER COLUMN name SET NOT NULL;

