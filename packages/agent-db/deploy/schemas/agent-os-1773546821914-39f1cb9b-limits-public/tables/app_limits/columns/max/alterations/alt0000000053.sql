-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/columns/max/alterations/alt0000000053
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/columns/max/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-limits-public".app_limits.max IS E'Maximum allowed usage; NULL means use the default limit value';

