-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/priority/alterations/alt0000002155
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/priority/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-status-public".org_level_requirements.priority IS E'Display ordering priority; lower values appear first';

