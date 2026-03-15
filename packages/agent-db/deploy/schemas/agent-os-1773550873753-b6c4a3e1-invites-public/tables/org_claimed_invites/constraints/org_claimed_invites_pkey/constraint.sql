-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/constraints/org_claimed_invites_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_claimed_invites 
  ADD CONSTRAINT org_claimed_invites_pkey PRIMARY KEY (id);

