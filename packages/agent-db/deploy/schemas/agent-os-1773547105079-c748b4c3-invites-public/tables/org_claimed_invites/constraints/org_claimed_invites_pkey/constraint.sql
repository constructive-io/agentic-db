-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/constraints/org_claimed_invites_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_claimed_invites 
  ADD CONSTRAINT org_claimed_invites_pkey PRIMARY KEY (id);

