-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/columns/priority/alterations/alt0000001774
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/columns/priority/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-status-public".app_level_requirements.priority IS E'Display ordering priority; lower values appear first';

