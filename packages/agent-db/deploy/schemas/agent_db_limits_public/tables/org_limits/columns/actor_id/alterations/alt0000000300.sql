-- Deploy: schemas/agent_db_limits_public/tables/org_limits/columns/actor_id/alterations/alt0000000300
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/columns/actor_id/column


COMMENT ON COLUMN agent_db_limits_public.org_limits.actor_id IS 'User whose usage is being tracked against this limit';

