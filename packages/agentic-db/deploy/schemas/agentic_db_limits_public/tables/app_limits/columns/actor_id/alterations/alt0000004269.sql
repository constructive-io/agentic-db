-- Deploy: schemas/agentic_db_limits_public/tables/app_limits/columns/actor_id/alterations/alt0000004269
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/columns/actor_id/column


COMMENT ON COLUMN agentic_db_limits_public.app_limits.actor_id IS 'User whose usage is being tracked against this limit';

