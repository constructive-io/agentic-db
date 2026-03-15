-- Deploy: schemas/agent_db_status_public/tables/app_achievements/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table


ALTER TABLE agent_db_status_public.app_achievements 
  ADD COLUMN updated_at timestamptz;

