-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/constraints/membership_types_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".membership_types 
  ADD CONSTRAINT membership_types_pkey PRIMARY KEY (id);

