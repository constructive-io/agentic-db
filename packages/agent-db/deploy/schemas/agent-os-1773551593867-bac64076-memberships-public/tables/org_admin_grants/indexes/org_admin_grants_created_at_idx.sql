-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/indexes/org_admin_grants_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/columns/created_at/column


CREATE INDEX org_admin_grants_created_at_idx ON "agent-os-1773551593867-bac64076-memberships-public".org_admin_grants ( created_at );

