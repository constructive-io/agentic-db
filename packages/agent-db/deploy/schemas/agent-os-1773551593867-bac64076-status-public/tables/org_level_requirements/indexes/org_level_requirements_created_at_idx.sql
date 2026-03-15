-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/indexes/org_level_requirements_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/created_at/column


CREATE INDEX org_level_requirements_created_at_idx ON "agent-os-1773551593867-bac64076-status-public".org_level_requirements ( created_at );

