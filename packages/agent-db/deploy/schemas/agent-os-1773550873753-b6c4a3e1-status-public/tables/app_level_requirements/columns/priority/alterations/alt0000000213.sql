-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/columns/priority/alterations/alt0000000213
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/columns/priority/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-status-public".app_level_requirements.priority IS E'Display ordering priority; lower values appear first';

