-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/constraints/invites_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
  ADD CONSTRAINT invites_pkey PRIMARY KEY (id);

