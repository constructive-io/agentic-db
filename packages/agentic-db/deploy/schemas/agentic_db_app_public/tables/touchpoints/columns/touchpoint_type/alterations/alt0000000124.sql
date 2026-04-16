-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/columns/touchpoint_type/alterations/alt0000000124
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/touchpoint_type/column


ALTER TABLE agentic_db_app_public.touchpoints 
  ALTER COLUMN touchpoint_type SET NOT NULL;

