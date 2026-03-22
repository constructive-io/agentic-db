-- Deploy: schemas/agentic_db_status_public/tables/app_achievements/columns/actor_id/alterations/alt0000004853
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table
-- requires: schemas/agentic_db_status_public/tables/app_achievements/columns/actor_id/column


ALTER TABLE agentic_db_status_public.app_achievements 
  ALTER COLUMN actor_id SET NOT NULL;

