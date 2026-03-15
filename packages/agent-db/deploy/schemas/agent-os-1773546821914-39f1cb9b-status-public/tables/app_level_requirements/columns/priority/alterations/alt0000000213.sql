-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/columns/priority/alterations/alt0000000213
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/columns/priority/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-status-public".app_level_requirements.priority IS E'Display ordering priority; lower values appear first';

