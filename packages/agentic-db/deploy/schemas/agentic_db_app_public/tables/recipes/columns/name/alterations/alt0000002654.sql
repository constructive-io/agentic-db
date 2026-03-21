-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/name/alterations/alt0000002654
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/updated_at/alterations/alt0000002653


ALTER TABLE "agentic_db_app_public".recipes 
  ALTER COLUMN name SET NOT NULL;

