-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/indexes/org_membership_defaults_created_by_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/columns/created_by/column


CREATE INDEX org_membership_defaults_created_by_idx ON "agent-os-1773547105079-c748b4c3-memberships-public".org_membership_defaults ( created_by );

