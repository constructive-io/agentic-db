-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/indexes/org_membership_defaults_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/columns/updated_at/column


CREATE INDEX org_membership_defaults_updated_at_idx ON "agent-os-1773547105079-c748b4c3-memberships-public".org_membership_defaults ( updated_at );

