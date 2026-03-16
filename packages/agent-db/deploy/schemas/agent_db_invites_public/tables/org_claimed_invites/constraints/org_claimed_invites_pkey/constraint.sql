-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/constraints/org_claimed_invites_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/table


ALTER TABLE "agent_db_invites_public".org_claimed_invites 
  ADD CONSTRAINT org_claimed_invites_pkey PRIMARY KEY (id);

