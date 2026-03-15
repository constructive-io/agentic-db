-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/role_types/constraints/role_types_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/role_types/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".role_types 
  ADD CONSTRAINT role_types_pkey PRIMARY KEY (id);

