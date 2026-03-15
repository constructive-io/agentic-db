-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/constraints/users_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".users 
  ADD CONSTRAINT users_pkey PRIMARY KEY (id);

