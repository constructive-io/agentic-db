-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/indexes/app_level_requirements_level_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/columns/level/column


CREATE INDEX app_level_requirements_level_idx ON "agent-os-1773546821914-39f1cb9b-status-public".app_level_requirements USING BTREE ( level );

