-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/role_types/constraints/role_types_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/role_types/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-users-public".role_types 
  ADD CONSTRAINT role_types_pkey PRIMARY KEY (id);

