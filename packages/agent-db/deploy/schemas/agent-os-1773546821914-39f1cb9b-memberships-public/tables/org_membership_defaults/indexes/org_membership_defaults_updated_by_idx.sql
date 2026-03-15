-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/indexes/org_membership_defaults_updated_by_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/columns/updated_by/column


CREATE INDEX org_membership_defaults_updated_by_idx ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_membership_defaults ( updated_by );

