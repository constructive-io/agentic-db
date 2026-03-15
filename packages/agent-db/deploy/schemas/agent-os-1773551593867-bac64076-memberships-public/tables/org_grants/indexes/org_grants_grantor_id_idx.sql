-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/indexes/org_grants_grantor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/columns/grantor_id/column


CREATE INDEX org_grants_grantor_id_idx ON "agent-os-1773551593867-bac64076-memberships-public".org_grants USING BTREE ( grantor_id );

