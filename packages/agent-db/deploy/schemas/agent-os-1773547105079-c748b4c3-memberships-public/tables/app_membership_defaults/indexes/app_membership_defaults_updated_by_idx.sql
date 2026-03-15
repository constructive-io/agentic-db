-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_membership_defaults/indexes/app_membership_defaults_updated_by_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_membership_defaults/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_membership_defaults/columns/updated_by/column


CREATE INDEX app_membership_defaults_updated_by_idx ON "agent-os-1773547105079-c748b4c3-memberships-public".app_membership_defaults ( updated_by );

