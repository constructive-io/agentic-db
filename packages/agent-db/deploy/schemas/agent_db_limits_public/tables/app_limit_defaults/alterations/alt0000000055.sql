-- Deploy: schemas/agent_db_limits_public/tables/app_limit_defaults/alterations/alt0000000055
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limit_defaults/table


COMMENT ON TABLE agent_db_limits_public.app_limit_defaults IS E'Default maximum values for each named limit, applied when no per-actor override exists';

