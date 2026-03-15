-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/granted/alterations/alt0000000119
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/granted/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships.granted IS E'Bitmask of permissions directly granted to this member (not from profiles)';

