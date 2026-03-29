-- Deploy: schemas/agentic_db_limits_public/tables/app_limits/columns/id/alterations/alt0000004265
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/table
-- requires: schemas/agentic_db_limits_public/tables/app_limits/columns/id/column


ALTER TABLE agentic_db_limits_public.app_limits 
  ALTER COLUMN id SET NOT NULL;

