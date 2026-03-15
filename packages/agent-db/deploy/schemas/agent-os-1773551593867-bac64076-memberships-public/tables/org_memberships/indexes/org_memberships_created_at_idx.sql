-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/indexes/org_memberships_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/created_at/column


CREATE INDEX org_memberships_created_at_idx ON "agent-os-1773551593867-bac64076-memberships-public".org_memberships ( created_at );

