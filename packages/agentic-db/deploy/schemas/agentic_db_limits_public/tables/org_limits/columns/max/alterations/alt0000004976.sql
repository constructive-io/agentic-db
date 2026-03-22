-- Deploy: schemas/agentic_db_limits_public/tables/org_limits/columns/max/alterations/alt0000004976
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limits/columns/max/column


COMMENT ON COLUMN agentic_db_limits_public.org_limits.max IS E'Maximum allowed usage; NULL means use the default limit value';

