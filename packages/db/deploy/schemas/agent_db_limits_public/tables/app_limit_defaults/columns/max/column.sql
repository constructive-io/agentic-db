-- Deploy: schemas/agent_db_limits_public/tables/app_limit_defaults/columns/max/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limit_defaults/table


ALTER TABLE "agent_db_limits_public".app_limit_defaults 
  ADD COLUMN max int;

