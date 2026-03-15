-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_owner_grants/constraints/app_owner_grants_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_owner_grants/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_owner_grants 
  ADD CONSTRAINT app_owner_grants_pkey PRIMARY KEY (id);

