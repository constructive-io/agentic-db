-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/constraints/org_memberships_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


ALTER TABLE "agentic_db_memberships_public".org_memberships 
  ADD CONSTRAINT org_memberships_pkey PRIMARY KEY (id);

