-- Deploy: schemas/agentic_db_limits_public/tables/app_limits/columns/max/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/table


ALTER TABLE agentic_db_limits_public.app_limits 
  ADD COLUMN max int;

