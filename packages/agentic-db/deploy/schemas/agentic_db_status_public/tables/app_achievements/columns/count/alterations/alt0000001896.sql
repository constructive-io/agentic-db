-- Deploy: schemas/agentic_db_status_public/tables/app_achievements/columns/count/alterations/alt0000001896
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table
-- requires: schemas/agentic_db_status_public/tables/app_achievements/columns/count/column


ALTER TABLE agentic_db_status_public.app_achievements 
  ALTER COLUMN count SET NOT NULL;

