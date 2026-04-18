-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/columns/id/alterations/alt0000000778
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/id/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.touchpoints 
  ALTER COLUMN id SET NOT NULL;

