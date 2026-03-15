-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/constraints/org_admin_grants_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/table


ALTER TABLE "agent_db_memberships_public".org_admin_grants 
  ADD CONSTRAINT org_admin_grants_pkey PRIMARY KEY (id);

