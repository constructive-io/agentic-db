-- Deploy: schemas/agent_db_limits_public/tables/org_limit_defaults/columns/max/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limit_defaults/table


ALTER TABLE agent_db_limits_public.org_limit_defaults 
  ADD COLUMN max int;

