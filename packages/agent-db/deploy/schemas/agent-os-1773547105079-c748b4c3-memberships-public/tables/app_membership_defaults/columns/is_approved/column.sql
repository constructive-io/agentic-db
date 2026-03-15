-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_membership_defaults/columns/is_approved/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_membership_defaults/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_membership_defaults 
  ADD COLUMN is_approved boolean;

