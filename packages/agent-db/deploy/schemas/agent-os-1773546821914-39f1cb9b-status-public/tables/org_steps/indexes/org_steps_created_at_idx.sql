-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/indexes/org_steps_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/columns/created_at/column


CREATE INDEX org_steps_created_at_idx ON "agent-os-1773546821914-39f1cb9b-status-public".org_steps ( created_at );

