-- Deploy: schemas/agent_db_limits_public/tables/app_limits/columns/num/alterations/alt0000000052
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/columns/num/column


COMMENT ON COLUMN agent_db_limits_public.app_limits.num IS 'Current usage count for this actor and limit';

