-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/constraints/claimed_invites_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/table


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".claimed_invites 
  ADD CONSTRAINT claimed_invites_pkey PRIMARY KEY (id);

