-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/constraints/claimed_invites_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/table


ALTER TABLE agent_db_invites_public.claimed_invites 
  ADD CONSTRAINT claimed_invites_pkey PRIMARY KEY (id);

