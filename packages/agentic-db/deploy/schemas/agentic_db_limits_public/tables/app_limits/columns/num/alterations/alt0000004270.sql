-- Deploy: schemas/agentic_db_limits_public/tables/app_limits/columns/num/alterations/alt0000004270
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/columns/num/column


COMMENT ON COLUMN agentic_db_limits_public.app_limits.num IS 'Current usage count for this actor and limit';

