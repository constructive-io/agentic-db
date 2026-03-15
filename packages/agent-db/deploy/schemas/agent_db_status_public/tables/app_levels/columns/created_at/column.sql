-- Deploy: schemas/agent_db_status_public/tables/app_levels/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/table


ALTER TABLE agent_db_status_public.app_levels 
  ADD COLUMN created_at timestamptz;

