-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/indexes/org_owner_grants_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/columns/updated_at/column


CREATE INDEX org_owner_grants_updated_at_idx ON "agent-os-1773551593867-bac64076-memberships-public".org_owner_grants ( updated_at );

