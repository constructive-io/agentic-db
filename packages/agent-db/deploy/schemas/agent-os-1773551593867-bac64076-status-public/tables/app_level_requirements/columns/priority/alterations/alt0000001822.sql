-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_level_requirements/columns/priority/alterations/alt0000001822
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_level_requirements/columns/priority/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-status-public".app_level_requirements.priority IS E'Display ordering priority; lower values appear first';

