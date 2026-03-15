-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/columns/max/alterations/alt0000001662
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/columns/max/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-limits-public".app_limits.max IS E'Maximum allowed usage; NULL means use the default limit value';

