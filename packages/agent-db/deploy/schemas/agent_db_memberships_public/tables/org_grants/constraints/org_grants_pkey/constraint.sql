-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/constraints/org_grants_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table


ALTER TABLE "agent_db_memberships_public".org_grants 
  ADD CONSTRAINT org_grants_pkey PRIMARY KEY (id);

