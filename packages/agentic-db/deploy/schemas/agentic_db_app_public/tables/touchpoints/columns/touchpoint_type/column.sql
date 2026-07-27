-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/columns/touchpoint_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table


ALTER TABLE agentic_db_app_public.touchpoints 
  ADD COLUMN touchpoint_type text;

