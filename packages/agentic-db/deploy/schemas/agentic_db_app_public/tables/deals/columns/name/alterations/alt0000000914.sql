-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/name/alterations/alt0000000914
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/name/column


ALTER TABLE "agentic_db_app_public".deals 
  ALTER COLUMN name SET NOT NULL;

