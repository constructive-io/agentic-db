-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/indexes/app_level_requirements_level_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/columns/level/column


CREATE INDEX app_level_requirements_level_idx ON "agent-os-1773550873753-b6c4a3e1-status-public".app_level_requirements USING BTREE ( level );

