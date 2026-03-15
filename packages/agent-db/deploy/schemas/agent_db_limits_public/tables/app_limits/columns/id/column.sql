-- Deploy: schemas/agent_db_limits_public/tables/app_limits/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/table


ALTER TABLE agent_db_limits_public.app_limits 
  ADD COLUMN id uuid;

