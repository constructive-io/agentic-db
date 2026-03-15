-- Deploy: schemas/agent_db_limits_public/tables/org_limits/columns/max/alterations/alt0000000302
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/columns/max/column


COMMENT ON COLUMN agent_db_limits_public.org_limits.max IS E'Maximum allowed usage; NULL means use the default limit value';

