-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/indexes/org_level_requirements_name_level_priority_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/name/column
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/level/column
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/priority/column


CREATE INDEX org_level_requirements_name_level_priority_idx ON "agent-os-1773551593867-bac64076-status-public".org_level_requirements USING BTREE ( name, level, priority );

