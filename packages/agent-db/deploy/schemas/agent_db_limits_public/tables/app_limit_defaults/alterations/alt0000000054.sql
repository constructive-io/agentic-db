-- Deploy: schemas/agent_db_limits_public/tables/app_limit_defaults/alterations/alt0000000054
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limit_defaults/table


ALTER TABLE agent_db_limits_public.app_limit_defaults 
  DISABLE ROW LEVEL SECURITY;

