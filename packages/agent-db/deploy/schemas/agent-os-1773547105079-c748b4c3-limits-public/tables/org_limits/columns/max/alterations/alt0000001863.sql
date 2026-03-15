-- Deploy: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/columns/max/alterations/alt0000001863
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/columns/max/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-limits-public".org_limits.max IS E'Maximum allowed usage; NULL means use the default limit value';

